import 'AppException.dart';

sealed class Message {}


class SuccessfulMessage extends Message {
  String message;
  SuccessfulMessage(this.message);

  @override
  String toString() {
    return 'Action Succeeded: $message';
  }
}

class FailedMessage extends Message {
  AppException message;
  FailedMessage(this.message);

  @override
  String toString() {
    return 'Something Failed: $message';
  }
}

class PendingMessage extends Message {
  String message;
  PendingMessage(this.message);

  @override
  String toString() {
    return 'Pending Action: $message';
  }
}
