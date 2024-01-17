import 'package:freezed_annotation/freezed_annotation.dart';

part 'AdminDashboardCustomerModel.g.dart';

@JsonSerializable()
class AdminDashboardCustomerModel {
  final String customerID;
  final String customerName;
  final String email;
  final String phoneNumber;

  AdminDashboardCustomerModel(
      {required this.customerID,
      required this.customerName,
      required this.email,
      required this.phoneNumber});

  factory AdminDashboardCustomerModel.fromJson(Map<String, dynamic> json) =>
      _$AdminDashboardCustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdminDashboardCustomerModelToJson(this);
}
