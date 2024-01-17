import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:his/utils/FirebaseConstants.dart';

import '../_SharedDomain/Users/UsersResponses.dart';

abstract class AbstractRepository {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<CompanyResponseModel> getCompanyDataByID(String companyID) async =>
      CompanyResponseModel.fromJson((await FirebaseFirestore.instance
              .collection(firebaseConstants.companyDataCollection)
              .doc(companyID)
              .get())
          .data()!
        ..addEntries([MapEntry(firebaseConstants.companyID, companyID)]));
}
