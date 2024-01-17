

import 'package:his/utils/Extensions.dart';

class AppException implements Exception {
  const AppException({
    this.code,
    this.message,
    this.defaultMessage = 'エラーが発生しました。',
  });

  /// String of identifying Status code or original error code.
  final String? code;

  /// Error details.
  final String? message;

  /// Default message.
  final String defaultMessage;

  @override
  String toString() {
    if (code == null) {
      return (message ?? '').ifIsEmpty(defaultMessage);
    }
    return '[$code] ${(message ?? '').ifIsEmpty(defaultMessage)}';
  }
}