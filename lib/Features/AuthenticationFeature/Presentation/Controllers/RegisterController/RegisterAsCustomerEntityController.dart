import 'dart:developer';

import 'package:his/Features/AuthenticationFeature/Domain/RegisterEntities/RegisterAsCustomer/RegisterAsCustomerEntity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../utils/SharedOperations.dart';

part 'RegisterAsCustomerEntityController.g.dart';

@riverpod
class RegisterAsCustomerEntityController
    extends _$RegisterAsCustomerEntityController with SharedUserOperations {
  @override
  RegisterAsCustomerEntity build() {
    return RegisterAsCustomerEntity.empty();
  }

  void setName(String newNameVal) {
    log("new Name Value to Set: $newNameVal");
    state = state.copyWith.name(
        value: newNameVal,
        errorMsg: !isValidUserName(newNameVal) ? "Not Valid Name" : null,
        isValid: isValidUserName(newNameVal));
    log("name after Setting: ${state}");
  }

  void setEmail(String newMailVal) => state = state.copyWith.email(
      value: newMailVal,
      errorMsg: !isValidEmail(newMailVal) ? "Not Valid Email" : null,
      isValid: isValidEmail(newMailVal));

  void setPhoneNumber(String newPhoneVal) => state = state.copyWith.phoneNumber(
      value: newPhoneVal,
      errorMsg: !isValidNumber(newPhoneVal) ? "Not Valid Phone Number" : null,
      isValid: isValidNumber(newPhoneVal));

  void setPassword(String newPassVal) => state = state.copyWith.password(
      value: newPassVal,
      errorMsg: !isValidPassword(newPassVal) ? "Not Valid Password" : null,
      isValid: isValidPassword(newPassVal));

  String? get getPasswordErrMsg => state.password.errorMsg;

  String? get getEmailErrMsg => state.email.errorMsg;

  String? get getNameErrMsg {
    log("current name error msg: ${state.name.errorMsg}");
    return state.name.errorMsg;
  }

  String? get getPhoneNumberErrMsg => state.phoneNumber.errorMsg;

  bool get isValidInput =>
      state.name.isValid &&
          state.email.isValid &&
          state.phoneNumber.isValid &&
          state.password.isValid;
}
