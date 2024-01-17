import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/_Widgets/CheckBoxTile/CheckBoxListBuilder.dart';
import 'package:his/Features/_Widgets/CheckBoxTile/Controllers/CheckBoxController.dart';
import 'package:his/Features/_Widgets/CheckBoxTile/Models/CheckBoxEntity.dart';
import 'package:his/Router/MyRoutes.gr.dart';
import 'package:his/utils/Resouces/ValuesManager.dart';

import '../../../../utils/Resouces/ColorManager.dart';
import '../../../../utils/Resouces/StringsManager.dart';
import 'Entities/AddQuoteEntity.dart';
import '_Controllers/AddQuoteEntityController.dart';

@RoutePage()
class AddQuoteView extends ConsumerStatefulWidget {
  const AddQuoteView({super.key});

  @override
  ConsumerState createState() => _AddQuoteViewState();
}

class _AddQuoteViewState extends ConsumerState<AddQuoteView> {
  TextEditingController doorWidthController = TextEditingController();
  TextEditingController doorHeightController = TextEditingController();
  TextEditingController doorHandleColorController = TextEditingController();
  TextEditingController doorUnitsController = TextEditingController();
  TextEditingController doorColorController = TextEditingController();
  TextEditingController windowWidthController = TextEditingController();
  TextEditingController windowHeightController = TextEditingController();
  TextEditingController windowColorController = TextEditingController();
  TextEditingController windowUnitsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Add Quote",
                style: Theme.of(context).textTheme.titleLarge)),
        backgroundColor: ColorManager.surface,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(PaddingValuesManager.p20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Select Service Type",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                CheckBoxListBuilder(
                    checkBoxes: ref
                        .watch(addQuoteEntityControllerProvider.select((value) {
                      return value.serviceTypes;
                    })),
                    onChange: ref
                        .read(addQuoteEntityControllerProvider.notifier)
                        .setGeneralQuoteType),
                const Divider(),
                switch (ref.watch(addQuoteEntityControllerProvider)) {
                  Door() => buildDoor(context),
                  Window() => buildWindow(context),
                },
                const SizedBox(height: AppSizeManager.s45),
                ElevatedButton(
                    onPressed: ref
                            .watch(addQuoteEntityControllerProvider.notifier)
                            .isValidInput
                        ? () {
                            context.router.push(AddQuoteDealSelectionRoute(
                                requestModel: ref
                                    .read(addQuoteEntityControllerProvider)
                                    .toRequestModel()));
                          }
                        : null,
                    child: const Text("Next")),
              ],
            ),
          ),
        ));
  }

  Widget buildDoor(BuildContext context) {
    print(
        "Inside Door *******************************************************");
    var s = ref.watch(addQuoteEntityControllerProvider.select((value) {
      return value.runtimeType;
    }));
    print("The Runtime Type Is: $s");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Door Dimensions",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: ColorManager.secondary)),
        TextFormField(
            controller:
                ref.watch(addQuoteEntityControllerProvider).widthField.value,
            onChanged: (value) => ref
                .read(addQuoteEntityControllerProvider.notifier)
                .setGeneralWidth(value),
            decoration: InputDecoration(
                helperText: StringManager.emptyStr,
                labelText: "Door Width CM",
                hintText: "Door Width CM",
                errorText: ref.watch(addQuoteEntityControllerProvider
                    .select((value) => value.widthField.errorMsg)))),
        TextFormField(
            controller:
                ref.watch(addQuoteEntityControllerProvider).heightField.value,
            onChanged: (value) => ref
                .read(addQuoteEntityControllerProvider.notifier)
                .setGeneralHeight(value),
            decoration: InputDecoration(
                helperText: StringManager.emptyStr,
                labelText: "Door Height CM",
                hintText: "Door Height CM",
                errorText: ref.watch(addQuoteEntityControllerProvider
                    .select((value) => value.heightField.errorMsg)))),
        Text("Door Material",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: ColorManager.secondary)),
        Align(
            alignment: Alignment.center,
            child: CheckBoxListBuilder(
              checkBoxes: ref.watch(addQuoteEntityControllerProvider
                  .select((value) => value.material)),
              onChange: ref
                  .read(addQuoteEntityControllerProvider.notifier)
                  .setGeneralMaterial,
            )),
        const Divider(),
        Text("Handle",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: ColorManager.secondary)),
        const Text("Handle Type"),
        Align(
          alignment: Alignment.center,
          child: CheckBoxListBuilder(
            checkBoxes:
                ref.watch(addQuoteEntityControllerProvider.select((value) {
              return (value as Door).doorHandle;
            })),
            onChange: ref
                .read(addQuoteEntityControllerProvider.notifier)
                .setDoorHandleType,
          ),
        ),
        const Text("Handle Color"),
        Container(
          color: ColorManager.primaryContainer,
          child: DropdownMenu(
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: "Gold", label: "Gold"),
                DropdownMenuEntry(value: "Silver", label: "Silver"),
                DropdownMenuEntry(value: "Black", label: "Black")
              ],
              controller:
                  ref.watch(addQuoteEntityControllerProvider).colorField.value,
              menuStyle: const MenuStyle(
                  elevation: MaterialStatePropertyAll(0),
                  visualDensity: VisualDensity.compact,
                  backgroundColor:
                      MaterialStatePropertyAll(ColorManager.primaryContainer),
                  surfaceTintColor:
                      MaterialStatePropertyAll(ColorManager.primaryContainer)),
              onSelected: (value) {
                ref
                    .read(addQuoteEntityControllerProvider.notifier)
                    .setGeneralColor(value!);
              }),
        ),
        const Divider(),
        TextFormField(
            controller: ref
                .watch(addQuoteEntityControllerProvider)
                .numberOfUnitsField
                .value,
            onChanged: (value) => ref
                .read(addQuoteEntityControllerProvider.notifier)
                .setGeneralUnits(value),
            decoration: InputDecoration(
                helperText: StringManager.emptyStr,
                labelText: "Number Of Units",
                hintText: "Number Of Units",
                errorText: ref.watch(addQuoteEntityControllerProvider
                    .select((value) => value.numberOfUnitsField.errorMsg)))),
      ],
    );
  }

  Widget buildWindow(BuildContext context) {
    print("inside Window ****************************************************");
    var s = ref.watch(addQuoteEntityControllerProvider.select((value) {
      return value.runtimeType;
    }));
    print("The Runtime Type Is: $s");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Window Dimensions",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: ColorManager.secondary)),
        TextFormField(
            controller:
                ref.watch(addQuoteEntityControllerProvider).widthField.value,
            onChanged: (value) => ref
                .read(addQuoteEntityControllerProvider.notifier)
                .setGeneralWidth(value),
            decoration: InputDecoration(
                helperText: StringManager.emptyStr,
                labelText: "Window Width CM",
                hintText: "Window Width CM",
                errorText: ref.watch(addQuoteEntityControllerProvider
                    .select((value) => value.widthField.errorMsg)))),
        TextFormField(
            controller:
                ref.watch(addQuoteEntityControllerProvider).heightField.value,
            onChanged: (value) => ref
                .read(addQuoteEntityControllerProvider.notifier)
                .setGeneralHeight(value),
            decoration: InputDecoration(
                helperText: StringManager.emptyStr,
                labelText: "Window Height CM",
                hintText: "Window Height CM",
                errorText: ref.watch(addQuoteEntityControllerProvider
                    .select((value) => value.heightField.errorMsg)))),
        Text("Window Material",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: ColorManager.secondary)),
        Align(
          alignment: Alignment.center,
          child: CheckBoxListBuilder(
            checkBoxes: ref.watch(addQuoteEntityControllerProvider
                .select((value) => value.material)),
            onChange: ref
                .read(addQuoteEntityControllerProvider.notifier)
                .setGeneralMaterial,
          ),
        ),
        Text("Glass Type",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: ColorManager.secondary)),
        Align(
          alignment: Alignment.center,
          child: CheckBoxListBuilder(
            checkBoxes: ref.watch(addQuoteEntityControllerProvider
                .select((value) => (value as Window).windowGlass)),
            onChange: ref
                .read(addQuoteEntityControllerProvider.notifier)
                .setWindowGlass,
          ),
        ),
        Text("Window Type",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: ColorManager.secondary)),
        Align(
          alignment: Alignment.center,
          child: CheckBoxListBuilder(
            checkBoxes: ref.watch(addQuoteEntityControllerProvider
                .select((value) => (value as Window).windowType)),
            onChange: ref
                .read(addQuoteEntityControllerProvider.notifier)
                .setWindowType,
          ),
        ),
        Text("Window Color",
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: ColorManager.secondary)),
        Container(
          color: ColorManager.primaryContainer,
          child: DropdownMenu(
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: "White", label: "White"),
                DropdownMenuEntry(value: "Silver", label: "Silver"),
                DropdownMenuEntry(value: "Black", label: "Black")
              ],
              controller:
                  ref.watch(addQuoteEntityControllerProvider).colorField.value,
              menuStyle: const MenuStyle(
                  elevation: MaterialStatePropertyAll(0),
                  visualDensity: VisualDensity.compact,
                  backgroundColor:
                      MaterialStatePropertyAll(ColorManager.primaryContainer),
                  surfaceTintColor:
                      MaterialStatePropertyAll(ColorManager.primaryContainer)),
              onSelected: (value) {
                ref
                    .read(addQuoteEntityControllerProvider.notifier)
                    .setGeneralColor(value!);
              }),
        ),
        const Divider(),
        TextFormField(
            controller: ref
                .watch(addQuoteEntityControllerProvider)
                .numberOfUnitsField
                .value,
            onChanged: (value) => ref
                .read(addQuoteEntityControllerProvider.notifier)
                .setGeneralUnits(value),
            decoration: InputDecoration(
                helperText: StringManager.emptyStr,
                labelText: "Number Of Units",
                hintText: "Number Of Units",
                errorText: ref.watch(addQuoteEntityControllerProvider
                    .select((value) => value.numberOfUnitsField.errorMsg)))),
      ],
    );
  }
}
