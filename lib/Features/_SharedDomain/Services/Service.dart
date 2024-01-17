import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his/Features/AuthenticationFeature/Domain/RegisterEntities/RegisterAsCompany/MaterialCategoryEntity.dart';
import 'package:his/Features/AuthenticationFeature/Domain/RegisterEntities/RegisterAsCompany/ServiceEntity.dart';
import 'package:his/Features/AuthenticationFeature/_Constants/CompanyServices.dart';
import 'package:his/utils/Extensions.dart';

part 'Service.g.dart';

@JsonSerializable(explicitToJson: true)
class ServiceModel {
  CompanyService serviceName;
  bool selection;
  Map<ServiceCategory, CategoryMaterialModel> categories;

  ServiceModel(
      {required this.serviceName,
      required this.selection,
      required this.categories});

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceModelToJson(this);

  factory ServiceModel.testValuePartial() => ServiceModel(
          serviceName: CompanyService.door,
          selection: true,
          categories: <ServiceCategory, CategoryMaterialModel>{
            ServiceCategory.doorMaterial: CategoryMaterialModel(
                categoryName: ServiceCategory.doorMaterial,
                materials: {
                  CategoryMaterialName.doorMaterialWood: MaterialModel(
                      materialName: CategoryMaterialName.doorMaterialWood,
                      selected: true,
                      price: 233),
                  CategoryMaterialName.doorMaterialAluminum: MaterialModel(
                      materialName: CategoryMaterialName.doorMaterialAluminum,
                      selected: true,
                      price: 11)
                }),
            ServiceCategory.doorHandle: CategoryMaterialModel(
                categoryName: ServiceCategory.doorHandle,
                materials: {
                  CategoryMaterialName.doorHandleAluminum: MaterialModel(
                      materialName: CategoryMaterialName.doorHandleAluminum,
                      selected: true,
                      price: 22),
                  CategoryMaterialName.doorHandleSmart: MaterialModel(
                      materialName: CategoryMaterialName.doorHandleSmart,
                      selected: true,
                      price: 22)
                }),
          });
}

@JsonSerializable(explicitToJson: true)
class CategoryMaterialModel {
  ServiceCategory categoryName;
  Map<CategoryMaterialName, MaterialModel> materials;

  CategoryMaterialModel({required this.categoryName, required this.materials});

  factory CategoryMaterialModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryMaterialModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryMaterialModelToJson(this);

  MaterialCategoryEntity toCategoryEntity() =>
      MaterialCategoryEntity(inputFields: materials.toMaterialEntities());
}

@JsonSerializable(explicitToJson: true)
class MaterialModel {
  CategoryMaterialName materialName;
  bool selected;
  double price;

  MaterialModel(
      {required this.materialName,
      required this.selected,
      required this.price});

  factory MaterialModel.fromJson(Map<String, dynamic> json) =>
      _$MaterialModelFromJson(json);

  Map<String, dynamic> toJson() => _$MaterialModelToJson(this);
}

enum CompanyService { door, window }

enum ServiceCategory {
  doorMaterial("Materials"),
  doorHandle("Handles"),
  windowMaterial("Materials"),
  windowGlass("Glass"),
  windowType("Type");

  const ServiceCategory(this.title);

  final String title;
}

enum CategoryMaterialName {
  doorMaterialWood("Wood"),
  doorMaterialAluminum("Aluminum"),
  doorHandleAluminum("Aluminum Handle"),
  doorHandleSmart("Smart Handle"),
  windowMaterialWood("Wood"),
  windowMaterialAluminum("Aluminum"),
  windowGlassClear("Clear Glass"),
  windowGlassTextured("Textured Glass"),
  windowTypeDoubleSide("Double Side"),
  windowTypeSlide("Slide");

  const CategoryMaterialName(this.title);

  final String title;
}
