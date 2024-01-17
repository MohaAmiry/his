/*
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/Presentation/Controllers/LoginController/RegisterAsCompanyEntityController1.dart';
import 'package:his/Features/_Widgets/CheckBoxTile/CheckBoxTile.dart';
import 'package:his/Features/_Widgets/CheckBoxTile/Models/CheckBoxEntity.dart';
import 'package:his/Features/_Widgets/MaterialPriceTile.dart';
import 'package:his/utils/Constants/ConstantServices.dart';

import '../lib/utils/Common Widgets/RadioPriceTile.dart';
import '../lib/utils/Common Widgets/RadioTile.dart';
import '../lib/utils/Providers/SvgProvider.dart';
import '../lib/utils/Resouces/AssetsManager.dart';
import '../lib/utils/Resouces/ColorManager.dart';
import '../lib/utils/Resouces/StringsManager.dart';
import '../lib/utils/Resouces/ValuesManager.dart';
import '../lib/Features/AuthenticationFeature/Data/AuthController.dart';
import '../lib/Features/AuthenticationFeature/_CommonWidgets/AuthButton.dart';

class RegisterAsCompanyView extends ConsumerStatefulWidget {
  const RegisterAsCompanyView({super.key});

  @override
  ConsumerState createState() => _RegisterAsCompanyViewState();
}

class _RegisterAsCompanyViewState extends ConsumerState<RegisterAsCompanyView> {
  final TextEditingController businessNameTextEdtController =
  TextEditingController();
  final TextEditingController emailTextEdtController = TextEditingController();
  final TextEditingController phoneTextEdtController = TextEditingController();
  final TextEditingController passwordTextEdtController =
  TextEditingController();
  final TextEditingController woodDoorTextEdtController =
  TextEditingController();
  final TextEditingController aluminumDoorTextEdtController =
  TextEditingController();
  final TextEditingController aluminumHandleTextEdtController =
  TextEditingController();
  final TextEditingController smartHandleTextEdtController =
  TextEditingController();
  final TextEditingController woodWindowTextEdtController =
  TextEditingController();
  final TextEditingController aluminumWindowTextEdtController =
  TextEditingController();
  final TextEditingController clearGlassTextEdtController =
  TextEditingController();
  final TextEditingController textureGlassTextEdtController =
  TextEditingController();
  final TextEditingController windowTypeDoubleTextEdtController =
  TextEditingController();
  final TextEditingController windowTypeSlideEdtController =
  TextEditingController();

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        backgroundColor: ColorManager.surface,
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(PaddingValuesManager.p20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: MediaQuery
                    .sizeOf(context)
                    .height * .1),
                SizedBox(
                    width: MediaQuery
                        .sizeOf(context)
                        .width * .7,
                    child: ref
                        .watch(SvgLoaderProvider(ImageAssetsManager.logoIcon))),
                const SizedBox(height: AppSizeManager.s45),
                Text(
                  "Register As A Company",
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge,
                ),
                const SizedBox(height: AppSizeManager.s10),
                const Divider(thickness: 1),
                Text(
                  "Business Data",
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineLarge,
                ),
                TextFormField(
                    controller: businessNameTextEdtController,
                    onChanged: (value) =>
                        ref
                            .watch(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setBusinessName(value),
                    decoration: InputDecoration(
                        helperText: StringManager.emptyStr,
                        labelText: "Business Official Name",
                        hintText: "Business Official Name",
                        errorText: ref
                            .watch(registerAsCompanyEntityControllerProvider
                            .notifier)
                            .getNameErrMsg)),
                TextFormField(
                    controller: emailTextEdtController,
                    onChanged: (value) =>
                        ref
                            .watch(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setEmail(value),
                    decoration: InputDecoration(
                        helperText: StringManager.emptyStr,
                        labelText: StringManager.email,
                        hintText: StringManager.email,
                        errorText: ref
                            .watch(registerAsCompanyEntityControllerProvider
                            .notifier)
                            .getEmailErrMsg)),
                TextFormField(
                    controller: phoneTextEdtController,
                    onChanged: (value) =>
                        ref
                            .watch(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setPhoneNumber(value),
                    decoration: InputDecoration(
                        helperText: StringManager.emptyStr,
                        labelText: "Phone Number",
                        hintText: "Phone Number",
                        errorText: ref
                            .watch(registerAsCompanyEntityControllerProvider
                            .notifier)
                            .getPhoneNumberErrMsg)),
                TextFormField(
                    controller: passwordTextEdtController,
                    onChanged: (value) =>
                        ref
                            .watch(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setPassword(value),
                    decoration: InputDecoration(
                        helperText: StringManager.emptyStr,
                        labelText: "Password",
                        hintText: "Password",
                        errorText: ref
                            .watch(registerAsCompanyEntityControllerProvider
                            .notifier)
                            .getPasswordErrMsg)),
                const Divider(thickness: 1),
                Text("Select Your Services",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineLarge),
                const Divider(thickness: 1),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Do You Sell Doors?",
                      style: Theme
                          .of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(color: ColorManager.secondary)),
                ),
                CheckBoxTile(
                    checkBoxEntity: checkBoxEntity(
                        text: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services
                            .elementAt(0)
                            .serviceName,
                        selection: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services
                            .elementAt(0)
                            .selected),
                    onChanged: () =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .selectService(0)),
                Text("Select Door Material",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineLarge),
                MaterialPriceTile(
                    checkBoxTile: checkBoxEntity(
                        text: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[0]
                            .availableMaterials[doorMaterial]![0]
                            .materialName,
                        selection: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[0]
                            .availableMaterials[doorMaterial]![0]
                            .selected),
                    textFormController: woodDoorTextEdtController,
                    errorText: ref
                        .watch(
                        registerAsCompanyEntityControllerProvider.notifier)
                        .getMaterialPriceFieldError(0, doorMaterial, 0),
                    onTextFormFieldChanged: (p0) =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setMaterialField(p0, 0, doorMaterial, 0),
                    formText: "Wood 1 cm^2 Price",
                    onChanged: () =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .selectMaterial(
                            0, doorMaterial, 0, woodDoorTextEdtController)),
                MaterialPriceTile(
                    checkBoxTile: checkBoxEntity(
                        text: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[0]
                            .availableMaterials[doorMaterial]![1]
                            .materialName,
                        selection: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[0]
                            .availableMaterials[doorMaterial]![1]
                            .selected),
                    textFormController: aluminumDoorTextEdtController,
                    errorText: ref
                        .watch(
                        registerAsCompanyEntityControllerProvider.notifier)
                        .getMaterialPriceFieldError(0, doorMaterial, 1),
                    onTextFormFieldChanged: (p0) =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setMaterialField(p0, 0, doorMaterial, 1),
                    formText: "Aluminum 1 cm^2 Price",
                    onChanged: () =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .selectMaterial(
                            0, doorMaterial, 1, aluminumDoorTextEdtController)),
                Text("Select Door Handles",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineLarge),
                MaterialPriceTile(
                    checkBoxTile: checkBoxEntity(
                        text: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[0]
                            .availableMaterials[doorHandle]![0]
                            .materialName,
                        selection: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[0]
                            .availableMaterials[doorHandle]![0]
                            .selected),
                    textFormController: aluminumHandleTextEdtController,
                    errorText: ref
                        .watch(
                        registerAsCompanyEntityControllerProvider.notifier)
                        .getMaterialPriceFieldError(0, doorHandle, 0),
                    onTextFormFieldChanged: (p0) =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setMaterialField(p0, 0, doorHandle, 0),
                    formText: "Aluminum Handle Price",
                    onChanged: () =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .selectMaterial(
                            0, doorHandle, 0, aluminumHandleTextEdtController)),

                MaterialPriceTile(
                    checkBoxTile: checkBoxEntity(
                        text: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[0]
                            .availableMaterials[doorHandle]![1]
                            .materialName,
                        selection: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[0]
                            .availableMaterials[doorHandle]![1]
                            .selected),
                    textFormController: smartHandleTextEdtController,
                    errorText: ref
                        .watch(
                        registerAsCompanyEntityControllerProvider.notifier)
                        .getMaterialPriceFieldError(0, doorHandle, 1),
                    onTextFormFieldChanged: (p0) =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setMaterialField(p0, 0, doorHandle, 1),
                    formText: "Smart Handle Price",
                    onChanged: () =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .selectMaterial(
                            0, doorHandle, 1, smartHandleTextEdtController)),
                const Divider(thickness: 1),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Do You Sell Windows?",
                      style: Theme
                          .of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(color: ColorManager.secondary)),
                ),
                Text("Select Window Material",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineLarge),
                CheckBoxTile(
                    checkBoxEntity: checkBoxEntity(
                        text: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services
                            .elementAt(1)
                            .serviceName,
                        selection: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services
                            .elementAt(1)
                            .selected),
                    onChanged: () =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .selectService(1)),
                MaterialPriceTile(
                    checkBoxTile: checkBoxEntity(
                        text: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[1]
                            .availableMaterials[windowMaterial]![0]
                            .materialName,
                        selection: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[1]
                            .availableMaterials[windowMaterial]![0]
                            .selected),
                    textFormController: woodWindowTextEdtController,
                    errorText: ref
                        .watch(
                        registerAsCompanyEntityControllerProvider.notifier)
                        .getMaterialPriceFieldError(1, windowMaterial, 0),
                    onTextFormFieldChanged: (p0) =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setMaterialField(p0, 1, windowMaterial, 0),
                    formText: "Wood 1 cm^2 Price",
                    onChanged: () =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .selectMaterial(
                            1, windowMaterial, 0, woodWindowTextEdtController)),
                MaterialPriceTile(
                    checkBoxTile: checkBoxEntity(
                        text: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[1]
                            .availableMaterials[windowMaterial]![1]
                            .materialName,
                        selection: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[1]
                            .availableMaterials[windowMaterial]![1]
                            .selected),
                    onTextFormFieldChanged: (p0) =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setMaterialField(p0, 1, windowMaterial, 1),
                    textFormController: aluminumWindowTextEdtController,
                    errorText: ref
                        .watch(
                        registerAsCompanyEntityControllerProvider.notifier)
                        .getMaterialPriceFieldError(1, windowMaterial, 1),
                    formText: "Aluminum 1 cm^2 Price",
                    onChanged: () =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .selectMaterial(1, windowMaterial, 1,
                            aluminumWindowTextEdtController)),
                Text("Select Glass Type",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineLarge),
                MaterialPriceTile(
                    checkBoxTile: checkBoxEntity(
                        text: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[1]
                            .availableMaterials[windowGlass]![0]
                            .materialName,
                        selection: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[1]
                            .availableMaterials[windowGlass]![0]
                            .selected),
                    textFormController: clearGlassTextEdtController,
                    errorText: ref
                        .watch(
                        registerAsCompanyEntityControllerProvider.notifier)
                        .getMaterialPriceFieldError(1, windowGlass, 0),
                    onTextFormFieldChanged: (p0) =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setMaterialField(p0, 1, windowGlass, 0),
                    formText: "Clear Glass 1 cm^2 Price",
                    onChanged: () =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .selectMaterial(
                            1, windowGlass, 0, clearGlassTextEdtController)),
                MaterialPriceTile(
                    checkBoxTile: checkBoxEntity(
                        text: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[1]
                            .availableMaterials[windowGlass]![1]
                            .materialName,
                        selection: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[1]
                            .availableMaterials[windowGlass]![1]
                            .selected),
                    textFormController: textureGlassTextEdtController,
                    errorText: ref
                        .watch(
                        registerAsCompanyEntityControllerProvider.notifier)
                        .getMaterialPriceFieldError(1, windowGlass, 1),
                    onTextFormFieldChanged: (p0) =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setMaterialField(p0, 1, windowGlass, 1),
                    formText: "Textured Glass 1 cm^2 Price",
                    onChanged: () =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .selectMaterial(
                            1, windowGlass, 1, textureGlassTextEdtController)),
                Text("Select Available Window Type",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineLarge),
                MaterialPriceTile(
                    checkBoxTile: checkBoxEntity(
                        text: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[1]
                            .availableMaterials[windowType]![0]
                            .materialName,
                        selection: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[1]
                            .availableMaterials[windowType]![0]
                            .selected),
                    textFormController: windowTypeDoubleTextEdtController,
                    errorText: ref
                        .watch(
                        registerAsCompanyEntityControllerProvider.notifier)
                        .getMaterialPriceFieldError(1, windowType, 0),
                    onTextFormFieldChanged: (p0) =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setMaterialField(p0, 1, windowType, 0),
                    formText: "Double Window Multiplier",
                    onChanged: () =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .selectMaterial(1, windowType, 0,
                            windowTypeDoubleTextEdtController)),
                MaterialPriceTile(
                    checkBoxTile: checkBoxEntity(
                        text: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[1]
                            .availableMaterials[windowType]![1]
                            .materialName,
                        selection: ref
                            .watch(registerAsCompanyEntityControllerProvider)
                            .services[1]
                            .availableMaterials[windowType]![1]
                            .selected),
                    textFormController: windowTypeSlideEdtController,
                    errorText: ref
                        .watch(
                        registerAsCompanyEntityControllerProvider.notifier)
                        .getMaterialPriceFieldError(1, windowType, 1),
                    onTextFormFieldChanged: (p0) =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .setMaterialField(p0, 1, windowType, 1),
                    formText: "Slide Window Multiplier",
                    onChanged: () =>
                        ref
                            .read(
                            registerAsCompanyEntityControllerProvider.notifier)
                            .selectMaterial(
                            1, windowType, 1, windowTypeSlideEdtController)),
                const Divider(thickness: 1),
                const Text(
                    "The Account Is DeactivatedUnt\nil it is approved By The\nAdmin."),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * .1),
                AuthButton(
                    text: StringManager.login,
                    onPressed: ref
                        .watch(registerAsCompanyEntityControllerProvider
                        .notifier)
                        .isValidInput
                        ? () =>
                        ref
                            .read(authControllerProvider.notifier)
                            .signIn(emailTextEdtController.value.text,
                            passwordTextEdtController.value.text)
                        : null),
              ],
            ),
          ),
        ),
      );
}
*/