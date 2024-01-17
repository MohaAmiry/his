import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his/Features/AuthenticationFeature/Data/RequestsModels/LoginRequest/LoginEntityRequest.dart';

import '../../../../../utils/Resouces/StringsManager.dart';
import '../../../_Widgets/InputField/InputField.dart';

part 'LoginEntity.freezed.dart';

@freezed
class LoginEntity with _$LoginEntity {
  const LoginEntity._();

  const factory LoginEntity(
      {required InputField email, required InputField password}) = _LoginEntity;

  factory LoginEntity.empty() => const LoginEntity(
      email: InputField(value: StringManager.emptyStr, errorMsg: null),
      password: InputField(value: StringManager.emptyStr, errorMsg: null));

  LoginEntityRequest toLoginRequest() =>
  LoginEntityRequest(email: email.value, password: password.value);

}