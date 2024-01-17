import 'package:flutter/material.dart';
import 'package:his/Features/ProfileFeature/Company/Domain/CompanyEditInfoModel.dart';
import 'package:his/Features/ProfileFeature/_SharedControllers/EditConfirmationController.dart';
import 'package:his/Features/_Widgets/InputField/MaterialInputField.dart';
import 'package:his/utils/SharedOperations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../Customer/Presentation/Entities/CustomerEditEntity.dart';
import '../../Domain/CustomerEditModel.dart';

part 'CustomerProfileEditEntityController.g.dart';

@riverpod
class CustomerProfileEditEntityController
    extends _$CustomerProfileEditEntityController with SharedUserOperations {
  @override
  CustomerEditEntity build(CustomerEditModel editEntity) {
    return CustomerEditEntity(
      name: MaterialInputField(
          isValid: true,
          value: TextEditingController()..text = editEntity.name),
      phoneNumber: MaterialInputField(
          isValid: true,
          value: TextEditingController()..text = editEntity.phoneNumber),
    );
  }

  void setName(String newNameVal) => state = state.copyWith.name(
      value: state.name.value..text = newNameVal,
      errorMsg: !isValidUserName(newNameVal) ? "Not Valid Name" : null,
      isValid: isValidUserName(newNameVal));

  void setNumber(String newNumberVal) => state = state.copyWith.phoneNumber(
      value: state.phoneNumber.value..text = newNumberVal,
      errorMsg: !isValidNumber(newNumberVal) ? "Not Valid Number" : null,
      isValid: isValidNumber(newNumberVal));

  Future<void> updateCustomerData() async => await ref
          .read(editConfirmationControllerProvider.notifier)
          .updateCustomerData((
        phoneNumber: state.phoneNumber.value.value.text,
        name: state.name.value.value.text
      ));

  bool get isValidInput => state.phoneNumber.isValid && state.name.isValid;
}
