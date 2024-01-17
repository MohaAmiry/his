// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UsersResponses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyResponseModel _$CompanyResponseModelFromJson(
        Map<String, dynamic> json) =>
    CompanyResponseModel(
      companyID: json['companyID'] as String,
      isActive: json['isActive'] as bool?,
      name: json['name'] as String,
      email: json['email'] as String,
      number: json['number'] as String,
      password: json['password'] as String,
      services: (json['services'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$CompanyServiceEnumMap, k),
            ServiceModel.fromJson(e as Map<String, dynamic>)),
      ),
      rate: (json['rate'] as num).toDouble(),
    );

Map<String, dynamic> _$CompanyResponseModelToJson(
        CompanyResponseModel instance) =>
    <String, dynamic>{
      'companyID': instance.companyID,
      'isActive': instance.isActive,
      'name': instance.name,
      'email': instance.email,
      'number': instance.number,
      'password': instance.password,
      'rate': instance.rate,
      'services': instance.services
          .map((k, e) => MapEntry(_$CompanyServiceEnumMap[k]!, e.toJson())),
    };

const _$CompanyServiceEnumMap = {
  CompanyService.door: 'door',
  CompanyService.window: 'window',
};

CustomerResponseModel _$CustomerResponseModelFromJson(
        Map<String, dynamic> json) =>
    CustomerResponseModel(
      customerID: json['customerID'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      number: json['number'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$CustomerResponseModelToJson(
        CustomerResponseModel instance) =>
    <String, dynamic>{
      'customerID': instance.customerID,
      'name': instance.name,
      'email': instance.email,
      'number': instance.number,
      'password': instance.password,
    };
