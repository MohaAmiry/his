// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QuoteResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuoteResponseModel _$QuoteResponseModelFromJson(Map<String, dynamic> json) =>
    QuoteResponseModel(
      date: DateTime.parse(json['date'] as String),
      quoteID: json['quoteID'] as String,
      companyID: json['companyID'] as String,
      customerID: json['customerID'] as String,
      companyName: json['companyName'] as String,
      customerName: json['customerName'] as String,
      requestModel:
          RequestModel.fromJson(json['requestModel'] as Map<String, dynamic>),
      estimatedPrice: (json['estimatedPrice'] as num).toDouble(),
      serviceRate: (json['serviceRate'] as num).toDouble(),
      companyRate: (json['companyRate'] as num).toDouble(),
      status: $enumDecode(_$QuoteStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$QuoteResponseModelToJson(QuoteResponseModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'quoteID': instance.quoteID,
      'companyID': instance.companyID,
      'customerID': instance.customerID,
      'companyName': instance.companyName,
      'customerName': instance.customerName,
      'requestModel': instance.requestModel.toJson(),
      'estimatedPrice': instance.estimatedPrice,
      'serviceRate': instance.serviceRate,
      'companyRate': instance.companyRate,
      'status': _$QuoteStatusEnumMap[instance.status]!,
    };

const _$QuoteStatusEnumMap = {
  QuoteStatus.pending: 'pending',
  QuoteStatus.accepted: 'accepted',
  QuoteStatus.done: 'done',
  QuoteStatus.rejected: 'rejected',
};
