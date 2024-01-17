import 'package:his/ExceptionHandler/MessageTypes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'MessageEmitter.g.dart';

@riverpod
class MessageEmitter extends _$MessageEmitter {
  @override
  Message? build() {
    return null;
  }

  void setMessage(Message? message) => state = message;
}
