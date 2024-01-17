
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../utils/SharedOperations.dart';
import '../../../Domain/LoginEntity/LoginEntity.dart';

part 'LoginEntityController.g.dart';

@riverpod
class LoginEntityController extends _$LoginEntityController with SharedUserOperations {
  @override
  LoginEntity build() {
    return LoginEntity.empty();
  }


  void setEmail(String newMailVal) =>
      state = state.copyWith.email(
          value: newMailVal,
          errorMsg: !isValidEmail(newMailVal) ? "Not Valid Email" : null,
          isValid: isValidEmail(newMailVal));

  void setPassword(String newPassVal) =>
      state = state.copyWith.password(
          value: newPassVal,
          errorMsg: !isValidPassword(newPassVal)
              ? "Not Valid Password"
              : null,
          isValid: isValidPassword(newPassVal));

  bool get isValidInput {
    return state.email.isValid && state.password.isValid;
  }

  String? get getPasswordErrMsg => state.password.errorMsg;

  String? get getEmailErrMsg => state.email.errorMsg;


}