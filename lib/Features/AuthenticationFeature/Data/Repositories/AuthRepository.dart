import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/ExceptionHandler/AppException.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/AuthenticationFeature/Data/RequestsModels/RegisterRequestsModels/RegisterRequest.dart';
import 'package:his/Features/AuthenticationFeature/Domain/LoginEntity/LoginEntity.dart';
import 'package:his/Features/AuthenticationFeature/Data/RequestsModels/LoginRequest/LoginEntityRequest.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';
import 'package:his/Features/_SharedData/AbstractDataRepository.dart';

import 'package:his/utils/Enums.dart';
import 'package:his/utils/FirebaseConstants.dart';

class AuthRepository extends AbstractRepository {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get authStateStream => FirebaseAuth.instance.userChanges();

  User? get getCurrentUser => FirebaseAuth.instance.currentUser;

  String get getCurrentUserID => getCurrentUser!.uid;

  Future<UserRole> signUp(RegisterRequest registerRequest) async {
    await auth.signOut();
    try {
      switch (registerRequest) {
        case RegisterAsCustomerReqModel():
          await auth.createUserWithEmailAndPassword(
              email: registerRequest.email, password: registerRequest.password);
          if (auth.currentUser != null) {
            DataRepository()
                .getCurrentCustomerDoc()
                .set(registerRequest.toJson());
          }
          return Customer(
            auth.currentUser!,
            registerRequest.name,
            registerRequest.email,
            registerRequest.number,
            registerRequest.password,
          );
        case RegisterAsCompanyReqModel():
          await auth.createUserWithEmailAndPassword(
              email: registerRequest.email, password: registerRequest.password);
          if (auth.currentUser != null) {
            print(
                "******************************************************************");
            DataRepository()
                .getCurrentCompanyDataDoc()
                .set(registerRequest.toJson());
          }
          return Company(
              auth.currentUser!,
              registerRequest.isActive,
              registerRequest.name,
              registerRequest.email,
              registerRequest.number,
              registerRequest.password,
              registerRequest.services);
      }
    } on Exception {
      rethrow;
    }
  }

  Future<UserRole> signIn(LoginEntityRequest loginReqModel) async {
    try {
      var userCredentials = (await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: loginReqModel.email, password: loginReqModel.password));
      if (userCredentials.user == null) {
        throw Exception("User is Null");
      }
      var userData = await getUserTypeDoc();

      if (userData is Company && userData.isActive != true) {
        await AuthRepository().auth.signOut();
        throw Exception("User is Not Activated");
      }

      return userData;
    } on Exception {
      rethrow;
    }
  }

  Future<void> signOut() async => await auth.signOut();

  Future<UserRole> getUserTypeDoc() async {
    try {
      var userID = AuthRepository().getCurrentUser?.uid ?? " ";
      if ((await FirebaseFirestore.instance
              .collection(firebaseConstants.customerDataCollection)
              .doc(userID)
              .get())
          .exists) {
        var customerDataAsMap = (await FirebaseFirestore.instance
                .collection(firebaseConstants.customerDataCollection)
                .doc(userID)
                .get())
            .data()!;
        var customerData =
            RegisterAsCustomerReqModel.fromJson(customerDataAsMap);
        return Customer(AuthRepository().getCurrentUser!, customerData.name,
            customerData.email, customerData.number, customerData.password);
      }
      if ((await FirebaseFirestore.instance
              .collection(firebaseConstants.companyDataCollection)
              .doc(userID)
              .get())
          .exists) {
        var companyDataAsMap = (await FirebaseFirestore.instance
                .collection(firebaseConstants.companyDataCollection)
                .doc(userID)
                .get())
            .data()!;
        var companyData = RegisterAsCompanyReqModel.fromJson(companyDataAsMap);
        if (companyData.isActive != true) {
          throw const AppException(message: "Company Not Active");
        }
        return Company(
            AuthRepository().getCurrentUser!,
            companyData.isActive,
            companyData.name,
            companyData.email,
            companyData.number,
            companyData.password,
            companyData.services);
      }
      if ((await FirebaseFirestore.instance
              .collection(firebaseConstants.adminDataCollection)
              .doc(userID)
              .get())
          .exists) {
        return Admin();
      }
      return None();
    } on Exception {
      rethrow;
    }
  }
}

var authRepositoryProvider = Provider((ref) => AuthRepository());

var authStateStreamProvider =
    StreamProvider((ref) => ref.watch(authRepositoryProvider).authStateStream);
