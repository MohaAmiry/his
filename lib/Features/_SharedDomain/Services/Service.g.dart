// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) => ServiceModel(
      serviceName: $enumDecode(_$CompanyServiceEnumMap, json['serviceName']),
      selection: json['selection'] as bool,
      categories: (json['categories'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$ServiceCategoryEnumMap, k),
            CategoryMaterialModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ServiceModelToJson(ServiceModel instance) =>
    <String, dynamic>{
      'serviceName': _$CompanyServiceEnumMap[instance.serviceName]!,
      'selection': instance.selection,
      'categories': instance.categories
          .map((k, e) => MapEntry(_$ServiceCategoryEnumMap[k]!, e.toJson())),
    };

const _$CompanyServiceEnumMap = {
  CompanyService.door: 'door',
  CompanyService.window: 'window',
};

const _$ServiceCategoryEnumMap = {
  ServiceCategory.doorMaterial: 'doorMaterial',
  ServiceCategory.doorHandle: 'doorHandle',
  ServiceCategory.windowMaterial: 'windowMaterial',
  ServiceCategory.windowGlass: 'windowGlass',
  ServiceCategory.windowType: 'windowType',
};

CategoryMaterialModel _$CategoryMaterialModelFromJson(
        Map<String, dynamic> json) =>
    CategoryMaterialModel(
      categoryName: $enumDecode(_$ServiceCategoryEnumMap, json['categoryName']),
      materials: (json['materials'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$CategoryMaterialNameEnumMap, k),
            MaterialModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$CategoryMaterialModelToJson(
        CategoryMaterialModel instance) =>
    <String, dynamic>{
      'categoryName': _$ServiceCategoryEnumMap[instance.categoryName]!,
      'materials': instance.materials.map(
          (k, e) => MapEntry(_$CategoryMaterialNameEnumMap[k]!, e.toJson())),
    };

const _$CategoryMaterialNameEnumMap = {
  CategoryMaterialName.doorMaterialWood: 'doorMaterialWood',
  CategoryMaterialName.doorMaterialAluminum: 'doorMaterialAluminum',
  CategoryMaterialName.doorHandleAluminum: 'doorHandleAluminum',
  CategoryMaterialName.doorHandleSmart: 'doorHandleSmart',
  CategoryMaterialName.windowMaterialWood: 'windowMaterialWood',
  CategoryMaterialName.windowMaterialAluminum: 'windowMaterialAluminum',
  CategoryMaterialName.windowGlassClear: 'windowGlassClear',
  CategoryMaterialName.windowGlassTextured: 'windowGlassTextured',
  CategoryMaterialName.windowTypeDoubleSide: 'windowTypeDoubleSide',
  CategoryMaterialName.windowTypeSlide: 'windowTypeSlide',
};

MaterialModel _$MaterialModelFromJson(Map<String, dynamic> json) =>
    MaterialModel(
      materialName:
          $enumDecode(_$CategoryMaterialNameEnumMap, json['materialName']),
      selected: json['selected'] as bool,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$MaterialModelToJson(MaterialModel instance) =>
    <String, dynamic>{
      'materialName': _$CategoryMaterialNameEnumMap[instance.materialName]!,
      'selected': instance.selected,
      'price': instance.price,
    };
