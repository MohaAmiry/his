import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his/Features/AuthenticationFeature/_Constants/CompanyServices.dart';
import '../../../../_SharedDomain/Services/Service.dart';
import '../../../../_Widgets/InputField/InputField.dart';
import '../../../../_Widgets/InputField/MaterialInputField.dart';

part 'MaterialCategoryEntity.freezed.dart';

@freezed
class MaterialCategoryEntity with _$MaterialCategoryEntity {
  const MaterialCategoryEntity._();

  const factory MaterialCategoryEntity(
      {required Map<CategoryMaterialName, MaterialInputField> inputFields,
      @Default(false) bool isValid}) = _MaterialCategoryEntity;

  MaterialCategoryEntity resetMaterialCategoryEntity() {
    var temp = {...inputFields};
    temp = temp
        .map((key, value) => MapEntry(key, value.getNewMaterialInputField()));
    return copyWith(inputFields: temp, isValid: false);
  }

  MaterialCategoryEntity setInputFieldText(
      CategoryMaterialName materialName, String text) {
    var temp = {...inputFields};
    temp[materialName] =
        temp[materialName]!.getNewMaterialInputFieldWithText(text);
    return copyWith(
        inputFields: temp,
        isValid: (temp.entries.any((element) => element.value.isValid)) &&
            temp.entries.every((element) => element.value.errorMsg == null));
  }
}
