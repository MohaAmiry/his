// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QuoteModelRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuoteModelRequest _$QuoteModelRequestFromJson(Map<String, dynamic> json) =>
    QuoteModelRequest(
      date: DateTime.parse(json['date'] as String),
      companyID: json['companyID'] as String,
      customerID: json['customerID'] as String,
      requestModel:
          RequestModel.fromJson(json['requestModel'] as Map<String, dynamic>),
      estimatedPrice: (json['estimatedPrice'] as num).toDouble(),
      serviceRate: (json['serviceRate'] as num).toDouble(),
      companyRate: (json['companyRate'] as num).toDouble(),
      status: $enumDecode(_$QuoteStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$QuoteModelRequestToJson(QuoteModelRequest instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'companyID': instance.companyID,
      'customerID': instance.customerID,
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
