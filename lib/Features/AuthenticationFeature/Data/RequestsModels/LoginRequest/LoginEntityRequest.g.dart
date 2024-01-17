// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginEntityRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginEntityRequest _$LoginEntityRequestFromJson(Map<String, dynamic> json) =>
    LoginEntityRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginEntityRequestToJson(LoginEntityRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
