/*
import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:his/Features/AuthenticationFeature/Domain/RegisterEntities/RegisterAsCompanyEntity1.dart';
import 'package:his/utils/Constants/ConstantServices.dart';
import 'package:his/utils/SharedOperations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '../lib/Features/AuthenticationFeature/Presentation/Controllers/LoginController/RegisterAsCompanyEntityController.g.dart';

@riverpod
class RegisterAsCompanyEntityController
    extends _$RegisterAsCompanyEntityController
    with SharedUserOperations {
  @override
  RegisterAsCompanyEntity build() {
    return RegisterAsCompanyEntity.empty();
  }

  void setBusinessName(String newNameVal) =>
      state = state.copyWith.name(
          value: newNameVal,
          errorMsg: !isValidUserName(newNameVal) ? "Not Valid Name" : null,
          isValid: isValidUserName(newNameVal));

  void setEmail(String newMailVal) =>
      state = state.copyWith.email(
          value: newMailVal,
          errorMsg: !isValidEmail(newMailVal) ? "Not Valid Email" : null,
          isValid: isValidEmail(newMailVal));

  void setPhoneNumber(String newPhoneVal) =>
      state = state.copyWith.password(
          value: newPhoneVal,
          errorMsg: !isValidNumber(newPhoneVal)
              ? "Not Valid Phone Number"
              : null,
          isValid: isValidNumber(newPhoneVal));

  void setPassword(String newPassVal) =>
      state = state.copyWith.password(
          value: newPassVal,
          errorMsg: !isValidPassword(newPassVal) ? "Not Valid Password" : null,
          isValid: isValidPassword(newPassVal));

  void setMaterialField(String newVal, int serviceIndex, String category,
      int materialIndex) {
    var tempServices = [...state.services];
    tempServices[serviceIndex]
        .availableMaterials[category]![materialIndex]
        .setFieldText(
        newVal,
        !isValidMaterialPrice(newVal) ? "Not Valid Value" : null,
        isValidMaterialPrice(newVal));
    tempServices[serviceIndex].validate();

    state = state.copyWith(services: tempServices);
  }


  String? getMaterialPriceFieldError(int serviceIndex, String materialCategory,
      int materialIndex) =>
      state.services[serviceIndex]
          .availableMaterials[materialCategory]![materialIndex].priceField.errorMsg;



  String getServiceName(int index) =>
      state.services
          .elementAt(index)
          .serviceName;

  bool getServiceSelection(int index) =>
      state.services
          .elementAt(index)
          .selected;

  String getMaterialName(int serviceIndex, String materialCategory,
      int materialIndex) =>
      state.services[serviceIndex]
          .availableMaterials[materialCategory]![materialIndex].materialName;

  bool getMaterialSelection(int serviceIndex, String materialCategory,
      int materialIndex) =>
      state.services[serviceIndex]
          .availableMaterials[materialCategory]![materialIndex].selected;

  bool get isValidInput =>
          validServices;

/*




 */
  bool get validServices =>
      state.services
          .where((element) => element.selected)
          .every((element) => element.valid);

  void selectService(int index) {
    var tempList = [...state.services];
    tempList[index].changeServiceSelection();
    state = state.copyWith(services: [...tempList]);
  }

  void selectMaterial(int serviceIndex, String materialCategory,
      int materialIndex, TextEditingController controller) {
    var tempList = [...state.services];
    tempList[serviceIndex]
        .changeMaterialSelection(materialCategory, materialIndex,controller);
    if (tempList[serviceIndex]
        .availableMaterials[materialCategory]![materialIndex]
        .selected) {
      tempList[serviceIndex].selected = true;
    }
    state = state.copyWith(services: [...tempList]);
  }
}
*/