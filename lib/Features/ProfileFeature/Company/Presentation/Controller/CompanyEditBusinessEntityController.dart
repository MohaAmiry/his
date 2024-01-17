import 'package:flutter/material.dart';
import 'package:his/Features/ProfileFeature/Company/Domain/CompanyEditInfoModel.dart';
import 'package:his/Features/ProfileFeature/Company/Presentation/Entities/CompanyEditBusinessEntity.dart';
import 'package:his/Features/_Widgets/InputField/InputField.dart';
import 'package:his/Features/_Widgets/InputField/MaterialInputField.dart';
import 'package:his/utils/SharedOperations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'CompanyEditBusinessEntityController.g.dart';

@riverpod
class CompanyEditBusinessEntityController
    extends _$CompanyEditBusinessEntityController with SharedUserOperations {
  @override
  CompanyEditBusinessEntity build(({String name, String phoneNumber}) data) {
    return CompanyEditBusinessEntity(
        name: MaterialInputField(
            isValid: true, value: TextEditingController()..text = data.name),
        phoneNumber: MaterialInputField(
            value: TextEditingController()..text = data.phoneNumber,
            isValid: true));
  }

  void setName(String newNameVal) => state = state.copyWith.name(
      value: state.name.value..text = newNameVal,
      errorMsg: !isValidUserName(newNameVal) ? "Not Valid Name" : null,
      isValid: isValidUserName(newNameVal));

  void setNumber(String newNumberVal) => state = state.copyWith.phoneNumber(
      value: state.phoneNumber.value..text = newNumberVal,
      errorMsg: !isValidNumber(newNumberVal) ? "Not Valid Number" : null,
      isValid: isValidNumber(newNumberVal));

  bool get isValidInput {
    return state.name.isValid && state.phoneNumber.isValid;
  }

  String? get getNameErrMsg => state.name.errorMsg;

  String? get getNumberErrMsg => state.phoneNumber.errorMsg;

  CompanyEditBusinessInfoModel getEditModel() =>
      (name: state.name.value.text, phoneNumber: state.phoneNumber.value.text);
}
