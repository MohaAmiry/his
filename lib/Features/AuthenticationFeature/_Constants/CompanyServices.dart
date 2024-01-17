import 'package:flutter/material.dart';
import '../../_SharedDomain/Services/Service.dart';
import '../Domain/RegisterEntities/RegisterAsCompany/MaterialCategoryEntity.dart';
import '../../_Widgets/InputField/MaterialInputField.dart';
import '../Domain/RegisterEntities/RegisterAsCompany/ServiceEntity.dart';

final TextEditingController _doorMaterialWoodTextController =
    TextEditingController();
final TextEditingController _doorMaterialAluminumTextController =
    TextEditingController();
final TextEditingController _doorHandleAluminumTextController =
    TextEditingController();
final TextEditingController _doorHandleSmartTextController =
    TextEditingController();
final TextEditingController _windowMaterialWoodTextController =
    TextEditingController();
final TextEditingController _windowMaterialAluminumTextController =
    TextEditingController();
final TextEditingController _windowGlassClearTextController =
    TextEditingController();
final TextEditingController _windowGlassTexturedTextController =
    TextEditingController();
final TextEditingController _windowTypeDoubleTextEdtController =
    TextEditingController();
final TextEditingController _windowTypeSlideEdtController =
    TextEditingController();

const String door = "Door";
const String doorMaterial = "DoorMaterial";
const String doorHandle = "DoorHandle";
const String window = "Window";
const String windowMaterial = "WindowMaterial";
const String windowGlass = "WindowGlass";
const String windowType = "WindowType";

final Map<CompanyService, ServiceEntity> allServices = {
  CompanyService.door: ServiceEntity(
      serviceName: CompanyService.door,
      categories: <ServiceCategory, MaterialCategoryEntity>{
        ServiceCategory.doorMaterial: MaterialCategoryEntity(inputFields: {
          CategoryMaterialName.doorMaterialWood:
              MaterialInputField(value: _doorMaterialWoodTextController),
          CategoryMaterialName.doorMaterialAluminum:
              MaterialInputField(value: _doorMaterialAluminumTextController)
        }),
        ServiceCategory.doorHandle: MaterialCategoryEntity(inputFields: {
          CategoryMaterialName.doorHandleAluminum:
              MaterialInputField(value: _doorHandleAluminumTextController),
          CategoryMaterialName.doorHandleSmart:
              MaterialInputField(value: _doorHandleSmartTextController)
        })
      }),
  CompanyService.window: ServiceEntity(
      serviceName: CompanyService.window,
      categories: <ServiceCategory, MaterialCategoryEntity>{
        ServiceCategory.windowMaterial: MaterialCategoryEntity(inputFields: {
          CategoryMaterialName.windowMaterialWood:
              MaterialInputField(value: _windowMaterialWoodTextController),
          CategoryMaterialName.windowMaterialAluminum:
              MaterialInputField(value: _windowMaterialAluminumTextController)
        }),
        ServiceCategory.windowGlass: MaterialCategoryEntity(inputFields: {
          CategoryMaterialName.windowGlassClear:
              MaterialInputField(value: _windowGlassClearTextController),
          CategoryMaterialName.windowGlassTextured:
              MaterialInputField(value: _windowGlassTexturedTextController)
        }),
        ServiceCategory.windowType: MaterialCategoryEntity(inputFields: {
          CategoryMaterialName.windowTypeDoubleSide:
              MaterialInputField(value: _windowTypeDoubleTextEdtController),
          CategoryMaterialName.windowTypeSlide:
              MaterialInputField(value: _windowTypeSlideEdtController)
        })
      }),
};
