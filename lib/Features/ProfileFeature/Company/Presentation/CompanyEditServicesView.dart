import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/ProfileFeature/_SharedControllers/EditConfirmationController.dart';
import '../../../../ExceptionHandler/AppException.dart';
import '../../../../ExceptionHandler/MessageController.dart';
import '../../../../ExceptionHandler/MessageTypes.dart';
import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/StringsManager.dart';
import '../../../../utils/Resouces/ValuesManager.dart';
import '../../../_SharedDomain/Services/Service.dart';
import '../../../_Widgets/CheckBoxTile/CheckBoxTile.dart';
import '../../../_Widgets/CheckBoxTile/Models/CheckBoxEntity.dart';
import 'Controller/CompanyEditProfileEntityController.dart';

@RoutePage()
class CompanyEditServicesView extends ConsumerStatefulWidget {
  final Map<CompanyService, ServiceModel> services;

  const CompanyEditServicesView({super.key, required this.services});

  @override
  ConsumerState createState() => _CompanyEditServicesViewState();
}

class _CompanyEditServicesViewState
    extends ConsumerState<CompanyEditServicesView> {
  @override
  Widget build(BuildContext context) {
    ref.listen(editConfirmationControllerProvider, (previous, next) {
      next.when(
          data: (data) {
            if (data) {
              ref.read(messageControllerProvider(context).notifier).showToast(
                  SuccessfulMessage("Successfully Updated Services"));
              context.router.pop();
            }
          },
          loading: () => ref
              .read(messageControllerProvider(context).notifier)
              .showToast(PendingMessage("Pending Update")),
          error: (error, _) => ref
              .read(messageControllerProvider(context).notifier)
              .showToast(
                  FailedMessage(AppException(message: error.toString()))));
    });
    return Scaffold(
      backgroundColor: ColorManager.surface,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PaddingValuesManager.p20),
          child: Column(
            children: [
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
                          .watch(CompanyEditProfileEntityControllerProvider(
                              widget.services))[CompanyService.door]!
                          .serviceName
                          .name,
                      selection: ref
                          .watch(CompanyEditProfileEntityControllerProvider(
                              widget.services))[CompanyService.door]!
                          .selection),
                  onChanged: () => ref
                      .read(CompanyEditProfileEntityControllerProvider(
                              widget.services)
                          .notifier)
                      .selectService(CompanyService.door)),
              Text("Select Door Material",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: AppSizeManager.s10),
              buildMaterialInputField(
                  CompanyService.door,
                  ServiceCategory.doorMaterial,
                  CategoryMaterialName.doorMaterialWood,
                  "Wood Square cm Price"),
              buildMaterialInputField(
                  CompanyService.door,
                  ServiceCategory.doorMaterial,
                  CategoryMaterialName.doorMaterialAluminum,
                  "Aluminum Square cm Price"),
              Text("Select Door Handles",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: AppSizeManager.s10),
              buildMaterialInputField(
                  CompanyService.door,
                  ServiceCategory.doorHandle,
                  CategoryMaterialName.doorHandleAluminum,
                  "Aluminum Handle Price"),
              buildMaterialInputField(
                  CompanyService.door,
                  ServiceCategory.doorHandle,
                  CategoryMaterialName.doorHandleSmart,
                  "Smart Handle Price"),
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
                          .watch(CompanyEditProfileEntityControllerProvider(
                              widget.services))[CompanyService.window]!
                          .serviceName
                          .name,
                      selection: ref
                          .watch(CompanyEditProfileEntityControllerProvider(
                              widget.services))[CompanyService.window]!
                          .selection),
                  onChanged: () => ref
                      .read(CompanyEditProfileEntityControllerProvider(
                              widget.services)
                          .notifier)
                      .selectService(CompanyService.window)),
              const SizedBox(height: AppSizeManager.s10),
              Text("Select Window Material",
                  style: Theme.of(context).textTheme.headlineLarge),
              buildMaterialInputField(
                  CompanyService.window,
                  ServiceCategory.windowMaterial,
                  CategoryMaterialName.windowMaterialWood,
                  "Wood Square cm Price"),
              buildMaterialInputField(
                  CompanyService.window,
                  ServiceCategory.windowMaterial,
                  CategoryMaterialName.windowMaterialAluminum,
                  "Aluminum Square cm Price"),
              Text("Select Glass Type",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: AppSizeManager.s10),
              buildMaterialInputField(
                  CompanyService.window,
                  ServiceCategory.windowGlass,
                  CategoryMaterialName.windowGlassClear,
                  "Clear Glass Square cm Price"),
              buildMaterialInputField(
                  CompanyService.window,
                  ServiceCategory.windowGlass,
                  CategoryMaterialName.windowGlassTextured,
                  "Textured Glass Square cm Price"),
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
              const SizedBox(height: AppSizeManager.s90),
              ElevatedButton(
                  onPressed: () => ref
                      .read(editConfirmationControllerProvider.notifier)
                      .updateService(ref.read(
                          CompanyEditProfileEntityControllerProvider(
                              widget.services))),
                  child: const Text("Update Services"))
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
              .watch(CompanyEditProfileEntityControllerProvider(widget.services))[
                  service]!
              .selection,
          controller: ref
              .watch(CompanyEditProfileEntityControllerProvider(widget.services))[
                  service]!
              .categories[category]!
              .inputFields[materialName]!
              .value,
          onChanged: (value) =>
              ref.watch(CompanyEditProfileEntityControllerProvider(widget.services).notifier).setMaterialText(
                  service, category, materialName, value),
          decoration: InputDecoration(
              helperText: StringManager.emptyStr,
              labelText: message,
              hintText: message,
              errorText: ref
                  .watch(CompanyEditProfileEntityControllerProvider(widget.services).notifier)
                  .getMaterialErrMsg(service, category, materialName)));
}
