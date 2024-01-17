import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'MessageModel.g.dart';

@JsonSerializable(explicitToJson: true)
@immutable
class MessageModel {
  final String text;
  final String senderID;
  final String sendDateTime;

  const MessageModel(
      {required this.text, required this.senderID, required this.sendDateTime});

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}
