// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ChatModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      firstSideName: json['firstSideName'] as String,
      firstSideID: json['firstSideID'] as String,
      secondSideName: json['secondSideName'] as String,
      secondSideID: json['secondSideID'] as String,
      chatID: json['chatID'] as String,
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'firstSideName': instance.firstSideName,
      'firstSideID': instance.firstSideID,
      'secondSideName': instance.secondSideName,
      'secondSideID': instance.secondSideID,
      'chatID': instance.chatID,
    };
