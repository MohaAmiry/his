// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AdminDashboardCompanyModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminDashboardCompanyModel _$AdminDashboardCompanyModelFromJson(
        Map<String, dynamic> json) =>
    AdminDashboardCompanyModel(
      companyID: json['companyID'] as String,
      companyName: json['companyName'] as String,
      email: json['email'] as String,
      isActive: json['isActive'] as bool,
      services:
          (json['services'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AdminDashboardCompanyModelToJson(
        AdminDashboardCompanyModel instance) =>
    <String, dynamic>{
      'companyID': instance.companyID,
      'companyName': instance.companyName,
      'email': instance.email,
      'isActive': instance.isActive,
      'services': instance.services,
    };
