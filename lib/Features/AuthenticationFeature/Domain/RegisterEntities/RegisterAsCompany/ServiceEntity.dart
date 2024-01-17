import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his/Features/AuthenticationFeature/Presentation/Controllers/RegisterController/RegisterAsCompanyEntityController.dart';
import 'package:his/Features/_Widgets/InputField/InputField.dart';
import 'package:his/utils/Extensions.dart';

import '../../../../_SharedDomain/Services/Service.dart';
import '../../../_Constants/CompanyServices.dart';
import 'MaterialCategoryEntity.dart';

part 'ServiceEntity.freezed.dart';

@freezed
class ServiceEntity with _$ServiceEntity {
  const ServiceEntity._();

  const factory ServiceEntity(
      {required Map<ServiceCategory, MaterialCategoryEntity> categories,
      required CompanyService serviceName,
      @Default(false) bool isValid,
      @Default(false) bool selection}) = _ServiceEntity;

  ServiceEntity setSelection() {
    ServiceEntity newService = copyWith();
    if (selection) {
      newService = newService.copyWith(selection: false, isValid: false);
      var newCategories = {...categories};
      newCategories = newCategories.map((key, value) {
        value = value.resetMaterialCategoryEntity();
        return MapEntry(key, value);
      });
      return newService.copyWith(categories: newCategories);
    } else {
      return copyWith(selection: true);
    }
  }

  ServiceEntity addTextToMaterial(ServiceCategory category,
      CategoryMaterialName materialName, String text) {
    ServiceEntity newService = copyWith();
    var categories = {...this.categories};
    categories[category] =
        categories[category]!.setInputFieldText(materialName, text);
    newService = newService.copyWith(
        categories: categories,
        isValid: categories.entries.every((element) => element.value.isValid));
    return newService;
  }

  ServiceModel toServiceModel() => ServiceModel(
      serviceName: serviceName,
      selection: selection,
      categories: categories.toCategoryMap());
}
