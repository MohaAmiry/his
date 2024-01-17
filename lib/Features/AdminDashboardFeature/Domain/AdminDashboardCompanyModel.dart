import 'package:freezed_annotation/freezed_annotation.dart';

part 'AdminDashboardCompanyModel.g.dart';

@JsonSerializable()
class AdminDashboardCompanyModel {
  final String companyID;
  final String companyName;
  final String email;
  final bool isActive;
  final List<String> services;

  AdminDashboardCompanyModel(
      {required this.companyID,
      required this.companyName,
      required this.email,
      required this.isActive,
      required this.services});

  factory AdminDashboardCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$AdminDashboardCompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdminDashboardCompanyModelToJson(this);
}
