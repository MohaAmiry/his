import 'dart:developer';

import 'package:his/ExceptionHandler/AppException.dart';
import 'package:his/ExceptionHandler/MessageController.dart';
import 'package:his/ExceptionHandler/MessageEmitter.dart';
import 'package:his/ExceptionHandler/MessageTypes.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/AuthenticationFeature/Data/RequestsModels/LoginRequest/LoginEntityRequest.dart';
import 'package:his/Features/AuthenticationFeature/Data/RequestsModels/RegisterRequestsModels/RegisterRequest.dart';
import 'package:his/Features/AuthenticationFeature/Domain/User/UserRole.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'AuthRepository.dart';

part 'AuthController.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  FutureOr<UserRole> build() async {
    try {
      return await ref.read(authRepositoryProvider).getUserTypeDoc();
    } on Exception {
      return None();
    }
  }

  Future<void> signIn(String email, String password) async {
    state = const AsyncLoading();
    ref
        .read(messageEmitterProvider.notifier)
        .setMessage(PendingMessage("Pending Login"));
    state = await AsyncValue.guard(() async => ref
        .read(authRepositoryProvider)
        .signIn(LoginEntityRequest(email: email, password: password)));
    if (state.hasError) {
      ref
          .read(messageEmitterProvider.notifier)
          .setMessage(FailedMessage(AppException(message: "${state.error}")));
      state = AsyncData(None());
      return;
    }
    if (state.hasValue) {
      state.requireValue is! None
          ? ref
              .read(messageEmitterProvider.notifier)
              .setMessage(SuccessfulMessage("Logged in Successfully"))
          : null;
    }
  }

  Future<void> signUp(RegisterRequest request) async {
    state = const AsyncLoading();
    ref
        .read(messageEmitterProvider.notifier)
        .setMessage(PendingMessage("Pending Register"));
    var result = await AsyncValue.guard(
        () async => await ref.read(authRepositoryProvider).signUp(request));
    if (result.hasError) {
      ref
          .read(messageEmitterProvider.notifier)
          .setMessage(FailedMessage(AppException(message: "${result.error}")));
      state = AsyncData(None());
      return;
    }
    if (result.hasValue) {
      if (result.requireValue is Company) {
        ref.read(messageEmitterProvider.notifier).setMessage(SuccessfulMessage(
            "Successfully Registered, Please Wait For Activation"));
        signOut();
      } else {
        ref
            .read(messageEmitterProvider.notifier)
            .setMessage(SuccessfulMessage("Successfully Registered"));
        state = result;
      }
    }
  }

  Future<void> signOut() async {
    await AuthRepository().signOut();
    state = AsyncData(None());
  }
}
