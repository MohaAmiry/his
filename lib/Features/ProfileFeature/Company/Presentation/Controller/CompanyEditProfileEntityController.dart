import 'package:his/Features/AuthenticationFeature/Data/Repositories/AuthRepository.dart';
import 'package:his/Features/AuthenticationFeature/Data/Repositories/DataRepository.dart';
import 'package:his/Features/AuthenticationFeature/_Constants/CompanyServices.dart';
import 'package:his/utils/Extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../AuthenticationFeature/Domain/RegisterEntities/RegisterAsCompany/ServiceEntity.dart';
import '../../../../_SharedDomain/Services/Service.dart';

part 'CompanyEditProfileEntityController.g.dart';

@riverpod
class CompanyEditProfileEntityController
    extends _$CompanyEditProfileEntityController {
  @override
  Map<CompanyService, ServiceEntity> build(
      Map<CompanyService, ServiceModel> val) {
    return val.toServiceEntities();
  }

  String? getMaterialErrMsg(CompanyService service, ServiceCategory category,
          CategoryMaterialName materialName) =>
      state[service]!.categories[category]!.inputFields[materialName]!.errorMsg;

  bool get isValidInput =>
      state.entries.where((element) => element.value.selection).isNotEmpty &&
      state.entries
          .where((element) => element.value.selection)
          .every((element) => element.value.isValid);

  void selectService(CompanyService service) {
    var tempList = {...state};
    tempList[service] = tempList[service]!.setSelection();
    state = tempList;
  }

  void setMaterialText(CompanyService service, ServiceCategory category,
      CategoryMaterialName materialName, String text) {
    var tempList = {...state};
    tempList[service] =
        tempList[service]!.addTextToMaterial(category, materialName, text);
    state = tempList;

    var a =
        state.entries.where((element) => element.value.selection).isNotEmpty;
    var b = state.entries
        .where((element) => element.value.selection)
        .every((element) => element.value.isValid);
  }
}
