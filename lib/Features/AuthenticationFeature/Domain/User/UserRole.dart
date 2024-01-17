import 'package:firebase_auth/firebase_auth.dart';

import '../../../_SharedDomain/Services/Service.dart';
import '../../_Constants/CompanyServices.dart';

class Entity<T> {
  T? object;
  bool setNewUser;

  Entity({required this.object, required this.setNewUser});
}

enum UserRoleEnum { admin, company, customer }

sealed class UserRole {}

class Admin extends UserRole {
  Admin();
}

class Company extends UserRole {
  final User? user;
  final bool? isActive;
  final String name;
  final String email;
  final String number;
  final String password;
  Map<CompanyService, ServiceModel> services;

  Company(this.user, this.isActive, this.name, this.email, this.number,
      this.password, this.services);

  factory Company.testData() =>
      Company(null, true, "name", "email", "number", "password", {});

  @override
  String toString() {
    return 'Company{user: $user, isActive: $isActive, name: $name, email: $email, number: $number, password: $password, services: $services}';
  }
}

class Customer extends UserRole {
  User? user;
  final String name;
  final String email;
  final String number;
  final String password;

  Customer(this.user, this.name, this.email, this.number, this.password);

  factory Customer.testData() =>
      Customer(null, "Name", "w@w.com", "0512312312", "123123123");

  @override
  String toString() {
    return 'Customer{user: $user, name: $name, email: $email, number: $number, password: $password}';
  }
}

class None extends UserRole {}
