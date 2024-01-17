import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/AuthenticationFeature/_Constants/CompanyServices.dart';
import 'package:his/Features/_Widgets/CheckBoxTile/CheckBoxTile.dart';
import 'package:his/Features/_Widgets/CheckBoxTile/Models/CheckBoxEntity.dart';

import '../../../ExceptionHandler/AppException.dart';
import '../../../ExceptionHandler/MessageController.dart';
import '../../../ExceptionHandler/MessageEmitter.dart';
import '../../../ExceptionHandler/MessageTypes.dart';
import '../../../utils/Providers/SvgProvider.dart';
import '../../../utils/Resouces/AssetsManager.dart';
import '../../../utils/Resouces/ColorManager.dart';
import '../../../utils/Resouces/StringsManager.dart';
import '../../../utils/Resouces/ValuesManager.dart';
import '../../_SharedDomain/Services/Service.dart';
import '../Data/Repositories/AuthController.dart';
import '../Domain/User/UserRole.dart';
import '../_CommonWidgets/AuthButton.dart';
import 'Controllers/RegisterController/RegisterAsCompanyEntityController.dart';

@RoutePage()
class RegisterAsCompanyView extends ConsumerStatefulWidget {
  const RegisterAsCompanyView({super.key});

  @override
  ConsumerState createState() => _RegisterAsCompanyViewState();
}

class _RegisterAsCompanyViewState extends ConsumerState<RegisterAsCompanyView> {
  final TextEditingController nameTextEdtController = TextEditingController();
  final TextEditingController businessNameTextEdtController =
      TextEditingController();
  final TextEditingController emailTextEdtController = TextEditingController();
  final TextEditingController phoneTextEdtController = TextEditingController();
  final TextEditingController passwordTextEdtController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.surface,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * .1),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width * .7,
                  child: ref
                      .watch(SvgLoaderProvider(ImageAssetsManager.logoIcon))),
              const SizedBox(height: AppSizeManager.s45),
              Text(
                "Register As A Company",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: AppSizeManager.s10),
              const Divider(thickness: 1),
              Text(
                "Business Data",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              TextFormField(
                  controller: businessNameTextEdtController,
                  onChanged: (value) => ref
                      .read(registerAsCompanyEntityControllerProvider.notifier)
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
                  onChanged: (value) => ref
                      .watch(registerAsCompanyEntityControllerProvider.notifier)
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
                  onChanged: (value) => ref
                      .watch(registerAsCompanyEntityControllerProvider.notifier)
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
                  onChanged: (value) => ref
                      .watch(registerAsCompanyEntityControllerProvider.notifier)
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
                  style: Theme.of(context).textTheme.headlineLarge),
              const Divider(thickness: 1),
              Text(
                "Write a price inside the specification you provide, you must fill at least one field from each category.",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Do You Sell Doors?",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: ColorManager.secondary)),
              ),
              CheckBoxTile(
                  checkBoxEntity: checkBoxEntity(
                      text: ref
                          .watch(registerAsCompanyEntityControllerProvider)
                          .services[CompanyService.door]!
                          .serviceName
                          .name,
                      selection: ref
                          .watch(registerAsCompanyEntityControllerProvider)
                          .services[CompanyService.door]!
                          .selection),
                  onChanged: () => ref
                      .read(registerAsCompanyEntityControllerProvider.notifier)
                      .selectService(CompanyService.door)),
              Text("Select Door Material",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: AppSizeManager.s10),
              buildMaterialInputField(
                  CompanyService.door,
                  ServiceCategory.doorMaterial,
                  CategoryMaterialName.doorMaterialWood,
                  "Wood Square cm Price SAR"),
              buildMaterialInputField(
                  CompanyService.door,
                  ServiceCategory.doorMaterial,
                  CategoryMaterialName.doorMaterialAluminum,
                  "Aluminum Square cm Price SAR"),
              Text("Select Door Handles",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: AppSizeManager.s10),
              buildMaterialInputField(
                  CompanyService.door,
                  ServiceCategory.doorHandle,
                  CategoryMaterialName.doorHandleAluminum,
                  "Aluminum Handle Price SAR"),
              buildMaterialInputField(
                  CompanyService.door,
                  ServiceCategory.doorHandle,
                  CategoryMaterialName.doorHandleSmart,
                  "Smart Handle Price SAR"),
              const Divider(thickness: 1),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Do You Sell Windows?",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: ColorManager.secondary)),
              ),
              CheckBoxTile(
                  checkBoxEntity: checkBoxEntity(
                      text: ref
                          .watch(registerAsCompanyEntityControllerProvider)
                          .services[CompanyService.window]!
                          .serviceName
                          .name,
                      selection: ref
                          .watch(registerAsCompanyEntityControllerProvider)
                          .services[CompanyService.window]!
                          .selection),
                  onChanged: () => ref
                      .read(registerAsCompanyEntityControllerProvider.notifier)
                      .selectService(CompanyService.window)),
              const SizedBox(height: AppSizeManager.s10),
              Text("Select Window Material",
                  style: Theme.of(context).textTheme.headlineLarge),
              buildMaterialInputField(
                  CompanyService.window,
                  ServiceCategory.windowMaterial,
                  CategoryMaterialName.windowMaterialWood,
                  "Wood Square cm Price SAR"),
              buildMaterialInputField(
                  CompanyService.window,
                  ServiceCategory.windowMaterial,
                  CategoryMaterialName.windowMaterialAluminum,
                  "Aluminum Square cm Price SAR"),
              Text("Select Glass Type",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: AppSizeManager.s10),
              buildMaterialInputField(
                  CompanyService.window,
                  ServiceCategory.windowGlass,
                  CategoryMaterialName.windowGlassClear,
                  "Clear Glass Square cm Price SAR"),
              buildMaterialInputField(
                  CompanyService.window,
                  ServiceCategory.windowGlass,
                  CategoryMaterialName.windowGlassTextured,
                  "Textured Glass Square cm Price SAR"),
              Text("Select Available Window Type",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: AppSizeManager.s10),
              buildMaterialInputField(
                  CompanyService.window,
                  ServiceCategory.windowType,
                  CategoryMaterialName.windowTypeSlide,
                  "Slide Type Multiplier"),
              buildMaterialInputField(
                  CompanyService.window,
                  ServiceCategory.windowType,
                  CategoryMaterialName.windowTypeDoubleSide,
                  "Double Side Multiplier"),
              const Divider(thickness: 1),
              const Text(
                  "The Account Is Deactivated Until it is approved By The Admin."),
              SizedBox(height: MediaQuery.of(context).size.height * .1),
              AuthButton(
                  text: StringManager.register,
                  onPressed: ref
                          .watch(registerAsCompanyEntityControllerProvider
                              .notifier)
                          .isValidInput
                      ? () => ref.read(authControllerProvider.notifier).signUp(
                          ref
                              .read(registerAsCompanyEntityControllerProvider)
                              .toRegisterAsCompanyReqModel())
                      : null),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMaterialInputField(
          CompanyService service,
          ServiceCategory category,
          CategoryMaterialName materialName,
          String message) =>
      TextFormField(
          enabled: ref
              .watch(registerAsCompanyEntityControllerProvider)
              .services[service]!
              .selection,
          controller: ref
              .watch(registerAsCompanyEntityControllerProvider)
              .services[service]!
              .categories[category]!
              .inputFields[materialName]!
              .value,
          onChanged: (value) => ref
              .watch(registerAsCompanyEntityControllerProvider.notifier)
              .setMaterialText(service, category, materialName, value),
          decoration: InputDecoration(
              helperText: StringManager.emptyStr,
              labelText: message,
              hintText: message,
              errorText: ref
                  .watch(registerAsCompanyEntityControllerProvider.notifier)
                  .getMaterialErrMsg(service, category, materialName)));
}
