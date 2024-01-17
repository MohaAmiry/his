import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AdminDashboardFeature/Domain/AdminDashboardCompanyModel.dart';
import 'package:his/Features/AdminDashboardFeature/Domain/AdminDashboardCustomerModel.dart';
import 'package:his/Features/AuthenticationFeature/Data/RequestsModels/RegisterRequestsModels/RegisterRequest.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';
import 'package:his/Features/ProfileFeature/Company/Domain/CompanyEditInfoModel.dart';
import 'package:his/Features/_SharedData/AbstractDataRepository.dart';
import 'package:his/Features/_SharedDomain/Users/UsersResponses.dart';
import 'package:his/utils/FirebaseConstants.dart';

import '../../../ProfileFeature/Customer/Domain/CustomerEditModel.dart';
import '../../../_SharedDomain/Services/Service.dart';
import 'AuthRepository.dart';

@immutable
class DataRepository extends AbstractRepository {
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Future<bool> rejectCompanyByID(String companyID) async {
    try {
      fireStore
          .collection(firebaseConstants.companyDataCollection)
          .doc(companyID)
          .update({firebaseConstants.companyIsActive: false});
      return true;
    } on Exception {
      rethrow;
    }
  }

  Future<bool> activateCompanyByID(String companyID) async {
    try {
      fireStore
          .collection(firebaseConstants.companyDataCollection)
          .doc(companyID)
          .update({firebaseConstants.companyIsActive: true});
      return true;
    } on Exception {
      rethrow;
    }
  }

  DocumentReference<Map<String, dynamic>> getCurrentCustomerDoc() =>
      FirebaseFirestore.instance
          .collection(firebaseConstants.customerDataCollection)
          .doc(AuthRepository().getCurrentUser!.uid);

  DocumentReference<Map<String, dynamic>> getCurrentCompanyDataDoc() =>
      FirebaseFirestore.instance
          .collection(firebaseConstants.companyDataCollection)
          .doc(AuthRepository().getCurrentUser!.uid);

  Future<IList<CompanyResponseModel>> getCompaniesWherePending() async =>
      (await FirebaseFirestore.instance
              .collection(firebaseConstants.companyDataCollection)
              .where(firebaseConstants.companyIsActive, isEqualTo: null)
              .get())
          .docs
          .map((e) {
        return CompanyResponseModel.fromJson(e.data()
          ..addEntries([MapEntry(firebaseConstants.companyID, e.id)]));
      }).toIList();
}

var dataRepositoryProvider = Provider((ref) => DataRepository());
