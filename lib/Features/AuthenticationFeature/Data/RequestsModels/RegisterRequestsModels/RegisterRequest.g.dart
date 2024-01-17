// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RegisterRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterAsCustomerReqModel _$RegisterAsCustomerReqModelFromJson(
        Map<String, dynamic> json) =>
    RegisterAsCustomerReqModel(
      name: json['name'] as String,
      email: json['email'] as String,
      number: json['number'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RegisterAsCustomerReqModelToJson(
        RegisterAsCustomerReqModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'number': instance.number,
      'password': instance.password,
    };

RegisterAsCompanyReqModel _$RegisterAsCompanyReqModelFromJson(
        Map<String, dynamic> json) =>
    RegisterAsCompanyReqModel(
      isActive: json['isActive'] as bool?,
      name: json['name'] as String,
      email: json['email'] as String,
      number: json['number'] as String,
      password: json['password'] as String,
      rate: (json['rate'] as num).toDouble(),
      services: (json['services'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$CompanyServiceEnumMap, k),
            ServiceModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$RegisterAsCompanyReqModelToJson(
        RegisterAsCompanyReqModel instance) =>
    <String, dynamic>{
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
