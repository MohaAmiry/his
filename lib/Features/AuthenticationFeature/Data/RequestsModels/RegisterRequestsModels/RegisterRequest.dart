import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';

import '../../../../_SharedDomain/Services/Service.dart';
import '../../../_Constants/CompanyServices.dart';

part 'RegisterRequest.g.dart';

sealed class RegisterRequest {}

@JsonSerializable(explicitToJson: true)
class RegisterAsCustomerReqModel extends RegisterRequest {
  final String name;
  final String email;
  final String number;
  final String password;

  RegisterAsCustomerReqModel(
      {required this.name,
      required this.email,
      required this.number,
      required this.password});

  factory RegisterAsCustomerReqModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterAsCustomerReqModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterAsCustomerReqModelToJson(this);

  factory RegisterAsCustomerReqModel.testValue() => RegisterAsCustomerReqModel(
      name: 'TestName',
      email: 'a@a.a',
      number: '0511111111',
      password: "123456789");
}

@JsonSerializable(explicitToJson: true)
class RegisterAsCompanyReqModel extends RegisterRequest {
  final bool? isActive;
  final String name;
  final String email;
  final String number;
  final String password;
  final double rate;
  Map<CompanyService, ServiceModel> services;

  RegisterAsCompanyReqModel(
      {required this.isActive,
      required this.name,
      required this.email,
      required this.number,
      required this.password,
      required this.rate,
      required this.services});

  factory RegisterAsCompanyReqModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterAsCompanyReqModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterAsCompanyReqModelToJson(this);

  bool getServiceSelection(CompanyService service) => services.values
      .firstWhere((element) => element.serviceName == service)
      .selection;

  bool getSelectionValueAt(CompanyService service, ServiceCategory category,
          CategoryMaterialName materialName) =>
      services[service]!
          .categories[category]!
          .materials[materialName]!
          .selected;

  double getPriceAt(CompanyService service, ServiceCategory category,
          CategoryMaterialName materialName) =>
      services[service]!.categories[category]!.materials[materialName]!.price;
}
