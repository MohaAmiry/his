import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../AuthenticationFeature/_Constants/CompanyServices.dart';
import '../../../_SharedDomain/Services/Service.dart';

@immutable
class CompanyProfileModel {
  final String companyName;
  final String email;
  final String phoneNumber;
  final double rate;
  final Map<CompanyService, ServiceModel> services;

  const CompanyProfileModel(
      this.companyName, this.email, this.phoneNumber, this.rate, this.services);

  factory CompanyProfileModel.test() => CompanyProfileModel(
      "Fulan Company",
      "ssssaa@g.com",
      "052312312",
      3,
      {CompanyService.door: ServiceModel.testValuePartial()});
}
