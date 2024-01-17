import 'dart:ffi';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:his/Features/_SharedDomain/Services/Service.dart';
import 'package:his/Features/_Widgets/CheckBoxTile/Models/CheckBoxEntity.dart';
import 'package:his/utils/Enums.dart';

import '../../../../_Widgets/InputField/MaterialInputField.dart';
import '../../../Domain/Requests/RequestModel.dart';

part 'AddQuoteEntity.freezed.dart';

TextEditingController _widthFieldController = TextEditingController();
TextEditingController _heightFieldController = TextEditingController();
TextEditingController _colorFieldController = TextEditingController();
TextEditingController _unitsFieldController = TextEditingController();

final IList<IList<CheckBoxEntity>> addQuoteBoxes = IList([
  IList([
    checkBoxEntity(text: CompanyService.door.name),
    checkBoxEntity(text: CompanyService.window.name)
  ]),
  IList([
    checkBoxEntity(text: CategoryMaterialName.doorMaterialWood.title),
    checkBoxEntity(text: CategoryMaterialName.doorMaterialAluminum.title)
  ]),
  IList([
    checkBoxEntity(text: CategoryMaterialName.doorHandleAluminum.title),
    checkBoxEntity(text: CategoryMaterialName.doorHandleSmart.title)
  ]),
  //
  // windows here
  IList([
    checkBoxEntity(text: CategoryMaterialName.windowMaterialWood.title),
    checkBoxEntity(text: CategoryMaterialName.windowMaterialAluminum.title)
  ]),
  IList([
    checkBoxEntity(text: CategoryMaterialName.windowGlassClear.title),
    checkBoxEntity(text: CategoryMaterialName.windowGlassTextured.title)
  ]),
  IList([
    checkBoxEntity(text: CategoryMaterialName.windowTypeSlide.title),
    checkBoxEntity(text: CategoryMaterialName.windowTypeDoubleSide.title)
  ])
]);

@freezed
sealed class AddQuoteEntity with _$AddQuoteEntity {
  const AddQuoteEntity._();

  const factory AddQuoteEntity.door(
      {required IList<CheckBoxEntity> serviceTypes,
      required MaterialInputField widthField,
      required MaterialInputField heightField,
      required IList<CheckBoxEntity> material,
      required IList<CheckBoxEntity> doorHandle,
      required MaterialInputField colorField,
      required MaterialInputField numberOfUnitsField,
      @Default("") String companyID,
      @Default("") String companyName,
      @Default("") String customerName,
      @Default("") String customerID,
      @Default(-1) double totalPrice,
      @Default(-1) double rate,
      @Default(QuoteStatus.pending) QuoteStatus quoteStatus}) = Door;

  const factory AddQuoteEntity.window(
      {required IList<CheckBoxEntity> serviceTypes,
      required MaterialInputField widthField,
      required MaterialInputField heightField,
      required IList<CheckBoxEntity> material,
      required IList<CheckBoxEntity> windowGlass,
      required IList<CheckBoxEntity> windowType,
      required MaterialInputField colorField,
      required MaterialInputField numberOfUnitsField,
      @Default("") String companyID,
      @Default("") String companyName,
      @Default("") String customerName,
      @Default("") String customerID,
      @Default(-1) double totalPrice,
      @Default(-1) double rate,
      @Default(QuoteStatus.pending) QuoteStatus quoteStatus}) = Window;

  factory AddQuoteEntity.emptyDoor() => AddQuoteEntity.door(
        serviceTypes: addQuoteBoxes.elementAt(0).replace(
            0,
            checkBoxEntity(
                text: addQuoteBoxes.elementAt(0).elementAt(0).text,
                selection: true)),
        widthField: MaterialInputField(value: _widthFieldController)
            .getNewMaterialInputField(),
        heightField: MaterialInputField(value: _heightFieldController)
            .getNewMaterialInputField(),
        material: addQuoteBoxes.elementAt(1),
        doorHandle: addQuoteBoxes.elementAt(2),
        colorField: MaterialInputField(value: _colorFieldController)
            .getNewMaterialInputField(),
        numberOfUnitsField: MaterialInputField(value: _unitsFieldController)
            .getNewMaterialInputField(),
      );

  factory AddQuoteEntity.emptyWindow() => AddQuoteEntity.window(
      serviceTypes: addQuoteBoxes.elementAt(0).replace(
          1,
          checkBoxEntity(
              text: addQuoteBoxes.elementAt(0).elementAt(1).text,
              selection: true)),
      widthField: MaterialInputField(value: _widthFieldController)
          .getNewMaterialInputField(),
      heightField: MaterialInputField(value: _heightFieldController)
          .getNewMaterialInputField(),
      material: addQuoteBoxes.elementAt(3),
      windowGlass: addQuoteBoxes.elementAt(4),
      windowType: addQuoteBoxes.elementAt(5),
      colorField: MaterialInputField(value: _colorFieldController)
          .getNewMaterialInputField(),
      numberOfUnitsField: MaterialInputField(value: _unitsFieldController)
          .getNewMaterialInputField());

  RequestModel toRequestModel() => switch (this) {
        Door() => DoorRequest(
            width:
                double.tryParse((this as Door).widthField.value.value.text) ??
                    -1,
            height:
                double.tryParse((this as Door).heightField.value.value.text) ??
                    -1,
            doorMaterial: convertName(
                (this as Door)
                    .material
                    .firstWhere((element) => element.selection)
                    .text,
                CompanyService.door),
            doorHandle: convertName(
                (this as Door)
                    .doorHandle
                    .firstWhere((element) => element.selection)
                    .text,
                CompanyService.door),
            handleColor: (this as Door).colorField.value.value.text,
            units: int.tryParse(_unitsFieldController.value.text) ?? -1),
        Window() => WindowRequest(
            width:
                double.tryParse((this as Window).widthField.value.value.text) ??
                    -1,
            height: double.tryParse(
                    (this as Window).heightField.value.value.text) ??
                -1,
            windowMaterial: convertName(
                (this as Window).material.firstWhere((element) {
                  return element.selection;
                }).text,
                CompanyService.window),
            windowColor: (this as Window).colorField.value.value.text,
            windowType: convertName(
                (this as Window)
                    .windowType
                    .firstWhere((element) => element.selection)
                    .text,
                CompanyService.window),
            windowGlassType: convertName(
                (this as Window)
                    .windowGlass
                    .firstWhere((element) => element.selection)
                    .text,
                CompanyService.window),
            units: int.tryParse(_unitsFieldController.value.text) ?? -1),
      };

  CategoryMaterialName convertName(String value, CompanyService serviceType) {
    return CategoryMaterialName.values.firstWhere((element) {
      return (element.title == value &&
          element.name.contains(serviceType.name));
    });
  }
}
