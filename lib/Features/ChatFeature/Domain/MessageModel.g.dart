// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MessageModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      text: json['text'] as String,
      senderID: json['senderID'] as String,
      sendDateTime: json['sendDateTime'] as String,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'senderID': instance.senderID,
      'sendDateTime': instance.sendDateTime,
    };
