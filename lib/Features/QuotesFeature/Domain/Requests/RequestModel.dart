import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../_SharedDomain/Services/Service.dart';

part 'RequestModel.g.dart';
part 'RequestModel.freezed.dart';

@Freezed(copyWith: false, makeCollectionsUnmodifiable: false, equal: false)
sealed class RequestModel with _$RequestModel {
  const RequestModel._();
  const factory RequestModel.doorRequest(
      {required double width,
      required double height,
      required CategoryMaterialName doorMaterial,
      required CategoryMaterialName doorHandle,
      required String handleColor,
      required int units}) = DoorRequest;
  const factory RequestModel.windowRequest(
      {required double width,
      required double height,
      required CategoryMaterialName windowMaterial,
      required String windowColor,
      required CategoryMaterialName windowType,
      required CategoryMaterialName windowGlassType,
      required int units}) = WindowRequest;
  factory RequestModel.fromJson(Map<String, dynamic> json) =>
      _$RequestModelFromJson(json);

  factory RequestModel.doorTestValue() => const RequestModel.doorRequest(
      width: 2,
      height: 2.3,
      doorMaterial: CategoryMaterialName.doorMaterialWood,
      doorHandle: CategoryMaterialName.doorMaterialAluminum,
      handleColor: "Red",
      units: 2);

  factory RequestModel.windowTestValue() => const RequestModel.windowRequest(
      width: 30.2,
      height: 20,
      windowMaterial: CategoryMaterialName.windowMaterialWood,
      windowColor: "Black",
      windowType: CategoryMaterialName.windowTypeSlide,
      windowGlassType: CategoryMaterialName.windowGlassClear,
      units: 1);
}

/*

@JsonSerializable(explicitToJson: true)
class DoorRequestModel extends RequestModel {
  double width;
  double height;
  CategoryMaterialName doorMaterial;
  CategoryMaterialName doorHandle;
  String handleColor;

  DoorRequestModel(
      {required this.width,
      required this.height,
      required this.doorMaterial,
      required this.doorHandle,
      required this.handleColor});

  factory DoorRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DoorRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$DoorRequestModelToJson(this);

  factory DoorRequestModel.testValue() => DoorRequestModel(
      width: 2,
      height: 2.3,
      doorMaterial: CategoryMaterialName.doorMaterialWood,
      doorHandle: CategoryMaterialName.doorMaterialAluminum,
      handleColor: "Red");
}

@JsonSerializable(explicitToJson: true)
class WindowRequestModel extends RequestModel {
  double width;
  double height;
  CategoryMaterialName windowMaterial;
  String windowColor;
  CategoryMaterialName windowType;
  CategoryMaterialName glassType;

  WindowRequestModel(
      {required this.width,
      required this.height,
      required this.windowMaterial,
      required this.windowColor,
      required this.windowType,
      required this.glassType});

  factory WindowRequestModel.testValue() => WindowRequestModel(
      width: 30.2,
      height: 20,
      windowMaterial: CategoryMaterialName.windowMaterialWood,
      windowColor: "Black",
      windowType: CategoryMaterialName.windowTypeSlide,
      glassType: CategoryMaterialName.windowGlassClear);

  factory WindowRequestModel.fromJson(Map<String, dynamic> json) =>
      _$WindowRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$WindowRequestModelToJson(this);
}
 */
