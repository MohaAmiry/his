import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'MessageModel.dart';

part 'ChatModel.freezed.dart';

part 'ChatModel.g.dart';

@freezed
class ChatModel with _$ChatModel {
  const ChatModel._();

  const factory ChatModel(
      {required String firstSideName,
      required String firstSideID,
      required String secondSideName,
      required String secondSideID,
      required String chatID}) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);

  //Map<String, dynamic> toJson() => _$ChatModelToJson(this);

  factory ChatModel.testModel() => ChatModel(
        firstSideName: "firstSideName",
        firstSideID: "firstSideID",
        secondSideName: "secondSideName",
        secondSideID: "secondSideID",
        chatID: "firstSideID_secondSideID",
      );
}
