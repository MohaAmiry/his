import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/_SharedData/AbstractDataRepository.dart';
import 'package:his/utils/FirebaseConstants.dart';

import '../Domain/AdminDashboardCompanyModel.dart';
import '../Domain/AdminDashboardCustomerModel.dart';

class _AdminDashboardRepository extends AbstractRepository {
  Ref ref;

  _AdminDashboardRepository(this.ref);

  Future<List<AdminDashboardCompanyModel>>
      getAllAdminDashboardCompanyData() async {
    return (await fireStore
            .collection(firebaseConstants.companyDataCollection)
            .where(firebaseConstants.companyIsActive, isNotEqualTo: null)
            .get())
        .docs
        .map((e) async => AdminDashboardCompanyModel(
            companyName: e.data()[firebaseConstants.companyName],
            companyID: e.id,
            isActive: e.data()[firebaseConstants.companyIsActive],
            services: await getAvailableServicesNamesByCompanyID(e.id),
            email: e.data()[firebaseConstants.customerEmail]))
        .wait;
  }

  Future<List<String>> getAvailableServicesNamesByCompanyID(
      String companyID) async {
    var data = await getCompanyDataByID(companyID);
    return data.services.entries
        .where((element) => element.value.selection)
        .map((e) => e.value.serviceName.name)
        .toList();
  }

  Future<List<AdminDashboardCustomerModel>>
      getAllAdminDashboardCustomerData() async => (await fireStore
              .collection(firebaseConstants.customerDataCollection)
              .get())
          .docs
          .map((e) => AdminDashboardCustomerModel(
              customerID: e.id,
              phoneNumber: e.data()[firebaseConstants.customerNumber],
              customerName: e.data()[firebaseConstants.customerName],
              email: e.data()[firebaseConstants.customerEmail]))
          .toList();

  Future<bool> setCompanyState(String companyID, bool toState) async {
    try {
      await fireStore
          .collection(firebaseConstants.companyDataCollection)
          .doc(companyID)
          .update({firebaseConstants.companyIsActive: toState});
      return true;
    } on Exception {
      rethrow;
    }
  }
}

var adminDashboardRepositoryProvider =
    Provider((ref) => _AdminDashboardRepository(ref));
