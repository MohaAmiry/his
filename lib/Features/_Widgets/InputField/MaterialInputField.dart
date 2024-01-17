import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his/utils/SharedOperations.dart';

import '../../AuthenticationFeature/_Constants/CompanyServices.dart';

part 'MaterialInputField.freezed.dart';

@freezed
class MaterialInputField with _$MaterialInputField {
  const MaterialInputField._();

  const factory MaterialInputField(
      {required TextEditingController value,
      @Default(null) String? errorMsg,
      @Default(false) bool isValid}) = _MaterialInputField;

  MaterialInputField getNewMaterialInputField() {
    value.text = "";
    return copyWith(isValid: false, errorMsg: null, value: value);
  }

  MaterialInputField getNewMaterialInputFieldWithText(String text,
      {bool isText = false}) {
    value.text = text;
    return copyWith(
        isValid: !isText ? isValidMaterialPrice(text) : text.isNotEmpty,
        errorMsg: !isText
            ? (!isValidMaterialPrice(text) ? "Not Valid Value" : null)
            : (text.isEmpty ? "Not Valid Value" : null),
        value: value);
  }

  bool isValidMaterialPrice(String val) => (double.tryParse(val) ?? -1) > 0;

/*
  void validate() {
    isValid = errorMsg == null && value.text.isNotEmpty;
  }

   */
}
