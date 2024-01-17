import 'package:his/Features/AuthenticationFeature/_Constants/CompanyServices.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../utils/SharedOperations.dart';
import '../../../../_SharedDomain/Services/Service.dart';
import '../../../Domain/RegisterEntities/RegisterAsCompany/RegisterAsCompanyEntity.dart';

part 'RegisterAsCompanyEntityController.g.dart';

@riverpod
class RegisterAsCompanyEntityController
    extends _$RegisterAsCompanyEntityController with SharedUserOperations {
  @override
  RegisterAsCompanyEntity build() {
    return RegisterAsCompanyEntity.empty();
  }

  void setBusinessName(String newNameVal) => state = state.copyWith.name(
      value: newNameVal,
      errorMsg: !isValidUserName(newNameVal) ? "Not Valid Name" : null,
      isValid: isValidUserName(newNameVal));

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

  String? get getNameErrMsg => state.name.errorMsg;

  String? get getPhoneNumberErrMsg => state.phoneNumber.errorMsg;

  String? getMaterialErrMsg(CompanyService service, ServiceCategory category,
          CategoryMaterialName materialName) =>
      state.services[service]!.categories[category]!.inputFields[materialName]!
          .errorMsg;

  bool get isValidInput =>
      state.name.isValid &&
      state.email.isValid &&
      state.phoneNumber.isValid &&
      state.password.isValid &&
      state.services.entries
          .where((element) => element.value.selection)
          .isNotEmpty &&
      state.services.entries
          .where((element) => element.value.selection)
          .every((element) => element.value.isValid);

  void selectService(CompanyService service) {
    var tempList = {...state.services};
    tempList[service] = tempList[service]!.setSelection();
    state = state.copyWith(services: {...tempList});
  }

  void setMaterialText(CompanyService service, ServiceCategory category,
      CategoryMaterialName materialName, String text) {
    var tempList = {...state.services};
    tempList[service] =
        tempList[service]!.addTextToMaterial(category, materialName, text);
    state = state.copyWith(services: tempList);
  }
}
