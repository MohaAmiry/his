// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OfferModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) => OfferModel(
      companyID: json['companyID'] as String,
      companyName: json['companyName'] as String,
      companyRate: (json['companyRate'] as num).toDouble(),
      requestModel:
          RequestModel.fromJson(json['requestModel'] as Map<String, dynamic>),
      estimatedPrice: (json['estimatedPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$OfferModelToJson(OfferModel instance) =>
    <String, dynamic>{
      'companyID': instance.companyID,
      'companyName': instance.companyName,
      'companyRate': instance.companyRate,
      'requestModel': instance.requestModel.toJson(),
      'estimatedPrice': instance.estimatedPrice,
    };
