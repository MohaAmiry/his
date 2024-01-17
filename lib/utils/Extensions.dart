import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Domain/RegisterEntities/RegisterAsCompany/ServiceEntity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../Features/AuthenticationFeature/Domain/RegisterEntities/RegisterAsCompany/MaterialCategoryEntity.dart';
import '../Features/_Widgets/InputField/MaterialInputField.dart';
import '../Features/AuthenticationFeature/_Constants/CompanyServices.dart';
import '../Features/_SharedDomain/Services/Service.dart';

extension StringExtension on String {
  String ifIsEmpty(String placeholder) => this.isEmpty ? placeholder : this;
}

extension ChatIDCombiner on List<String> {
  String constructChatID() {
    sort();
    return join("_");
  }
}

extension ServiceMapConverter on Map<CompanyService, ServiceEntity> {
  Map<CompanyService, ServiceModel> toServiceMap() =>
      map((key, value) => MapEntry(key, value.toServiceModel()));
}

extension CategoryMapConverter on Map<ServiceCategory, MaterialCategoryEntity> {
  Map<ServiceCategory, CategoryMaterialModel> toCategoryMap() =>
      map((key, value) => MapEntry(
          key,
          CategoryMaterialModel(
              categoryName: key,
              materials: value.inputFields.toMaterialMap())));
}

extension MaterialMapConverter
    on Map<CategoryMaterialName, MaterialInputField> {
  Map<CategoryMaterialName, MaterialModel> toMaterialMap() =>
      map((key, value) => MapEntry(
          key,
          MaterialModel(
              materialName: key,
              selected: value.isValid,
              price: double.tryParse(value.value.text) ?? -1)));
}

extension ServiceEntityConverter on Map<CompanyService, ServiceModel> {
  Map<CompanyService, ServiceEntity> toServiceEntities() =>
      map((key, value) => MapEntry(
          key,
          ServiceEntity(
              categories: value.categories.toCategoryEntities(),
              selection: value.selection,
              serviceName: value.serviceName)));
}

extension CategoryEntityConverter
    on Map<ServiceCategory, CategoryMaterialModel> {
  Map<ServiceCategory, MaterialCategoryEntity> toCategoryEntities() =>
      map((key, value) {
        var materialEntities = value.materials.toMaterialEntities();
        return MapEntry(
            key, MaterialCategoryEntity(inputFields: materialEntities));
      });
}

extension MaterialEntityConverter on Map<CategoryMaterialName, MaterialModel> {
  Map<CategoryMaterialName, MaterialInputField> toMaterialEntities() =>
      map((key, model) {
        TextEditingController controller = TextEditingController();
        if (model.selected) controller.text = model.price.toString();
        return MapEntry(
            key,
            MaterialInputField(
                value: controller, isValid: model.selected, errorMsg: null));
      });
}

extension RefreshNotifiers<T> on AutoDisposeAsyncNotifier<T> {
  Future<void> myRefresh() async {
    state = const AsyncLoading();
    await Future.delayed(const Duration(seconds: 1));
    ref.invalidateSelf();
  }
}
