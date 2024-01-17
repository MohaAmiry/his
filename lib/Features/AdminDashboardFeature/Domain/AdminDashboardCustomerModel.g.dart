// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AdminDashboardCustomerModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminDashboardCustomerModel _$AdminDashboardCustomerModelFromJson(
        Map<String, dynamic> json) =>
    AdminDashboardCustomerModel(
      customerID: json['customerID'] as String,
      customerName: json['customerName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$AdminDashboardCustomerModelToJson(
        AdminDashboardCustomerModel instance) =>
    <String, dynamic>{
      'customerID': instance.customerID,
      'customerName': instance.customerName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };
