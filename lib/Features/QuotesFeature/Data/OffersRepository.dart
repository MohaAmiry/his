import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthRepository.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/_SharedData/AbstractDataRepository.dart';
import 'package:his/Features/_SharedDomain/Services/Service.dart';
import 'package:his/Features/_SharedDomain/Users/UsersResponses.dart';
import 'package:his/utils/Enums.dart';
import 'package:his/utils/FirebaseConstants.dart';

import '../Domain/OfferModel.dart';
import '../Domain/QuoteModelRequest.dart';
import '../Domain/QuoteResponseModel.dart';
import '../Domain/Requests/RequestModel.dart';

class OffersRepository extends AbstractRepository {
  DataRepository dataRepository = DataRepository();
  AuthRepository authRepository = AuthRepository();

  Future<void> getCompanyOffer(String companyID) async {
    dataRepository.getCurrentCompanyDataDoc();
  }

  Future<bool?> addQuote(OfferModel offerModel) async {
    try {
      await dataRepository.fireStore
          .collection(firebaseConstants.quotesCollection)
          .add(buildQuoteModelFromOffer(offerModel).toJson());
      return true;
    } on Exception {
      rethrow;
    }
  }

  Future<IList<QuoteResponseModel>> getMyPendingQuotes() async {
    return await getQuotesByIDAndStatus(
        authRepository.getCurrentUserID, QuoteStatus.pending);
  }

  Future<IList<QuoteResponseModel>> getQuotesByIDAndStatus(
      String id, QuoteStatus status) async {
    var docs = await dataRepository.fireStore
        .collection(firebaseConstants.quotesCollection)
        .where(Filter.and(
            Filter(firebaseConstants.quotesStatus, isEqualTo: status.name),
            Filter.or(
              Filter(firebaseConstants.quotesCustomerID, isEqualTo: id),
              Filter(firebaseConstants.quotesCompanyID, isEqualTo: id),
            )))
        .get()
      ..docs;
    var mapped = docs.docs.map((e) async {
      String companyName =
          await getCompanyNameByID(e.get(firebaseConstants.quotesCompanyID));
      String customerName =
          await getCustomerNameByID(e.get(firebaseConstants.quotesCustomerID));
      return QuoteResponseModel.fromJson(e.data()
        ..addEntries([
          MapEntry(firebaseConstants.quotesQuoteID, e.id),
          MapEntry(firebaseConstants.quotesCustomerName, customerName),
          MapEntry(firebaseConstants.quotesCompanyName, companyName),
        ]));
    });

    var quoteResponsesList = await Future.wait([...mapped]);
    return quoteResponsesList.toIList();
  }

  Stream<IList<QuoteResponseModel>> getQuotesByIDAndStatusSnapshot(
          String id, QuoteStatus status) =>
      dataRepository.fireStore
          .collection(firebaseConstants.quotesCollection)
          .where(Filter.and(
              Filter(firebaseConstants.quotesStatus, isEqualTo: status.name),
              Filter.or(
                Filter(firebaseConstants.quotesCustomerID, isEqualTo: id),
                Filter(firebaseConstants.quotesCompanyID, isEqualTo: id),
              )))
          .snapshots()
          .map((event) => event.docs
              .map((e) => QuoteResponseModel.fromJson(
                  e.data()..addEntries([MapEntry("quoteID", e.id)])))
              .toIList());

  Future<bool> rejectQuoteByID(String quoteID) async {
    await dataRepository.fireStore
        .collection(firebaseConstants.quotesCollection)
        .doc(quoteID)
        .update({firebaseConstants.quotesStatus: QuoteStatus.rejected.name});
    return true;
  }

  Future<bool> acceptQuoteByID(String quoteID) async {
    await dataRepository.fireStore
        .collection(firebaseConstants.quotesCollection)
        .doc(quoteID)
        .update({firebaseConstants.quotesStatus: QuoteStatus.accepted.name});
    return true;
  }

  QuoteModelRequest buildQuoteModelFromOffer(OfferModel offerModel) =>
      QuoteModelRequest(
          date: DateTime.now(),
          companyID: offerModel.companyID,
          customerID: authRepository.getCurrentUserID,
          requestModel: offerModel.requestModel,
          estimatedPrice: offerModel.estimatedPrice,
          serviceRate: 0,
          companyRate: offerModel.companyRate,
          status: QuoteStatus.pending);

  Future<List<OfferModel>> getAllCompaniesOffers(
      RequestModel requestModel) async {
    var activeCompaniesID = await getCompaniesIDsWhereActive();
    List<OfferModel> offers = [];

    List<CompanyResponseModel> activeCompanies = await activeCompaniesID
        .map((e) async => await dataRepository.getCompanyDataByID(e))
        .wait;

    activeCompanies = _filterCompanies(activeCompanies, requestModel);
    switch (requestModel) {
      case DoorRequest():
        for (var company in activeCompanies) {
          var materialPrice = company.getPriceAt(CompanyService.door,
              ServiceCategory.doorMaterial, requestModel.doorMaterial);
          var handlePrice = company.getPriceAt(CompanyService.door,
              ServiceCategory.doorHandle, requestModel.doorHandle);
          var estimatedPrice = _calculateDoorOffer(
              requestModel.width,
              requestModel.height,
              materialPrice,
              handlePrice,
              requestModel.units);
          offers.add(OfferModel(
              companyID: company.companyID,
              companyName: company.name,
              companyRate: company.rate,
              requestModel: requestModel,
              estimatedPrice: estimatedPrice));
        }
        break;
      case WindowRequest():
        for (var company in activeCompanies) {
          var materialPrice = company.getPriceAt(CompanyService.window,
              ServiceCategory.windowMaterial, requestModel.windowMaterial);
          var windowTypeMultiplier = company.getPriceAt(CompanyService.window,
              ServiceCategory.windowType, requestModel.windowType);
          var windowGlass = company.getPriceAt(CompanyService.window,
              ServiceCategory.windowGlass, requestModel.windowGlassType);
          var estimatedPrice = _calculateWindowOffer(
              requestModel.width,
              requestModel.height,
              materialPrice,
              windowGlass,
              windowTypeMultiplier,
              requestModel.units);
          offers.add(OfferModel(
              companyID: company.companyID,
              companyName: company.name,
              companyRate: company.rate,
              requestModel: requestModel,
              estimatedPrice: estimatedPrice));
          break;
        }
    }
    return offers;
  }

  Future<bool> rateService(
      String quoteID, double rate, String companyID) async {
    await dataRepository.fireStore
        .collection(firebaseConstants.quotesCollection)
        .doc(quoteID)
        .update({
      firebaseConstants.quotesServiceRate: rate,
      firebaseConstants.quotesStatus: QuoteStatus.done.name,
    });
    await revalidateCompanyRate(companyID);
    return true;
  }

  Future<List<String>> getCompaniesIDsWhereActive() async =>
      (await FirebaseFirestore.instance
              .collection(firebaseConstants.companyDataCollection)
              .where(firebaseConstants.companyIsActive, isEqualTo: true)
              .get())
          .docs
          .map((e) => e.id)
          .toList();

  Future<bool> revalidateCompanyRate(String companyID) async {
    var docs = await dataRepository.fireStore
        .collection(firebaseConstants.quotesCollection)
        .where(Filter.and(
            Filter(firebaseConstants.quotesStatus,
                isEqualTo: QuoteStatus.done.name),
            Filter(firebaseConstants.quotesCompanyID, isEqualTo: companyID)))
        .get()
      ..docs;
    double overallRate = docs.docs.fold(
        0.0,
        (previousValue, element) =>
            previousValue +
            double.parse(
                element.get(firebaseConstants.quotesServiceRate).toString()));
    overallRate = overallRate / docs.size;
    await dataRepository.fireStore
        .collection(firebaseConstants.companyDataCollection)
        .doc(companyID)
        .update({firebaseConstants.companyRate: overallRate});
    return true;
  }

  List<CompanyResponseModel> _filterCompanies(
      List<CompanyResponseModel> companies, RequestModel requestModel) {
    List<CompanyResponseModel> filteredCompanies = [];
    switch (requestModel) {
      case DoorRequest():
        companies = companies
            .where(
                (element) => element.getServiceSelection(CompanyService.door))
            .toList();
        for (var company in companies) {
          var material = company.getSelectionValueAt(CompanyService.door,
              ServiceCategory.doorMaterial, requestModel.doorMaterial);
          var handle = company.getSelectionValueAt(CompanyService.door,
              ServiceCategory.doorHandle, requestModel.doorHandle);
          if (material && handle) {
            filteredCompanies.add(company);
          }
        }
        break;
      case WindowRequest():
        companies = companies
            .where(
                (element) => element.getServiceSelection(CompanyService.window))
            .toList();
        for (var company in companies) {
          var material = company.getSelectionValueAt(CompanyService.window,
              ServiceCategory.windowMaterial, requestModel.windowMaterial);
          var windowType = company.getSelectionValueAt(CompanyService.window,
              ServiceCategory.windowType, requestModel.windowType);
          var windowGlassType = company.getSelectionValueAt(
              CompanyService.window,
              ServiceCategory.windowGlass,
              requestModel.windowGlassType);
          if (material && windowType && windowGlassType) {
            filteredCompanies.add(company);
          }
        }
        break;
    }
    return filteredCompanies;
  }

  Future<String> getCompanyNameByID(String companyID) async =>
      (await FirebaseFirestore.instance
              .collection(firebaseConstants.companyDataCollection)
              .doc(companyID)
              .get())
          .data()![firebaseConstants.companyName];

  Future<String> getCustomerNameByID(String customerID) async =>
      (await FirebaseFirestore.instance
              .collection(firebaseConstants.customerDataCollection)
              .doc(customerID)
              .get())
          .data()![firebaseConstants.customerName];

  Future<String> getCompanyRateByID(String companyID) async =>
      (await FirebaseFirestore.instance
              .collection(firebaseConstants.companyDataCollection)
              .doc(companyID)
              .get())
          .data()![firebaseConstants.companyRate];

  double _calculateWindowOffer(
      double width,
      double height,
      double materialPrice,
      double glassPrice,
      double windowTypeMultiplier,
      int units) {
    var dimensions = (width * height) / 100;
    var perimeter = 2 * (width + height) / 100;
    var totalMaterialPrice = materialPrice * perimeter;
    var totalGlassPrice = dimensions * glassPrice;
    return (totalMaterialPrice + totalGlassPrice) *
        windowTypeMultiplier *
        units;
  }

  double _calculateDoorOffer(double width, double height, double materialPrice,
      double handlePrice, int units) {
    return (((width * height * materialPrice) / 100) + handlePrice) * units;
  }
}

var offersRepositoryProvider = Provider((ref) => OffersRepository());
