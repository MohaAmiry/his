import 'package:freezed_annotation/freezed_annotation.dart';

import '../Services/Service.dart';

part 'UsersResponses.g.dart';

@JsonSerializable(explicitToJson: true)
class CompanyResponseModel {
  final String companyID;
  final bool? isActive;
  final String name;
  final String email;
  final String number;
  final String password;
  final double rate;
  Map<CompanyService, ServiceModel> services;

  CompanyResponseModel(
      {required this.companyID,
      required this.isActive,
      required this.name,
      required this.email,
      required this.number,
      required this.password,
      required this.services,
      required this.rate});

  factory CompanyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyResponseModelToJson(this);

  bool getServiceSelection(CompanyService service) => services.values
      .firstWhere((element) => element.serviceName == service)
      .selection;

  bool getSelectionValueAt(CompanyService service, ServiceCategory category,
      CategoryMaterialName materialName) {
    print("${service}, ${category}, ${materialName}");
    return services[service]!
        .categories[category]!
        .materials[materialName]!
        .selected;
  }

  double getPriceAt(CompanyService service, ServiceCategory category,
          CategoryMaterialName materialName) =>
      services[service]!.categories[category]!.materials[materialName]!.price;
}

@JsonSerializable(explicitToJson: true)
class CustomerResponseModel {
  final String customerID;
  final String name;
  final String email;
  final String number;
  final String password;

  CustomerResponseModel({
    required this.customerID,
    required this.name,
    required this.email,
    required this.number,
    required this.password,
  });

  factory CustomerResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerResponseModelToJson(this);
}
