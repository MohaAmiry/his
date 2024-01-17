import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../Models/CheckBoxEntity.dart';

part 'CheckBoxController.g.dart';

@riverpod
class CheckBoxController extends _$CheckBoxController {
  @override
  IList<IList<CheckBoxEntity>> build(
      IList<IList<CheckBoxEntity>> itemsToSelect) {
    return itemsToSelect;
  }

  /*
  void changeSelectionSingleVal(int listIndex, int boxIndex, bool toVal) {
    if (listIndex == 0) {
      state.elementAt(0).elementAt(0).selection
          ? ref
              .read(addQuoteEntityControllerProvider.notifier)
              .setGeneralQuoteType(CompanyService.door)
          : ref
              .read(addQuoteEntityControllerProvider.notifier)
              .setGeneralQuoteType(CompanyService.window);
    }
    if (state.elementAt(listIndex).elementAt(boxIndex).selection && !toVal)
      return;
    var listToChage = state.elementAt(listIndex);
    for (int i = 0; i < listToChage.length; i++) {
      listToChage = listToChage.replaceAll(
          from: listToChage.elementAt(i),
          to: checkBoxEntity(text: listToChage.elementAt(i).text));
    }
    listToChage = listToChage.replace(
        boxIndex,
        checkBoxEntity(
            text: listToChage.elementAt(boxIndex).text, selection: toVal));

    state = state.replace(listIndex, listToChage);

    switch (listIndex) {
      case 0:
        ref.read(addQuoteEntityControllerProvider.notifier).setGeneralQuoteType(
            state
                        .elementAt(listIndex)
                        .indexWhere((element) => element.selection) ==
                    0
                ? CompanyService.door
                : CompanyService.window);
        break;
      case 1:
        ref.read(addQuoteEntityControllerProvider.notifier).setGeneralMaterial(
            state
                        .elementAt(listIndex)
                        .indexWhere((element) => element.selection) ==
                    0
                ? CategoryMaterialName.doorHandleAluminum
                : CategoryMaterialName.doorHandleSmart);
        break;
      case 2:
        ref.read(addQuoteEntityControllerProvider.notifier).setDoorHandleType(
            state
                        .elementAt(listIndex)
                        .indexWhere((element) => element.selection) ==
                    0
                ? CategoryMaterialName.windowMaterialWood
                : CategoryMaterialName.windowMaterialAluminum);
      case 3:
        ref.read(addQuoteEntityControllerProvider.notifier).setGeneralMaterial(
            state
                        .elementAt(listIndex)
                        .indexWhere((element) => element.selection) ==
                    0
                ? CategoryMaterialName.windowMaterialWood
                : CategoryMaterialName.windowMaterialAluminum);
      case 4:
        ref.read(addQuoteEntityControllerProvider.notifier).setWindowGlass(state
                    .elementAt(listIndex)
                    .indexWhere((element) => element.selection) ==
                0
            ? CategoryMaterialName.windowGlassClear
            : CategoryMaterialName.windowGlassTextured);
      case 5:
        ref.read(addQuoteEntityControllerProvider.notifier).setWindowType(state
                    .elementAt(listIndex)
                    .indexWhere((element) => element.selection) ==
                0
            ? CategoryMaterialName.windowTypeSlide
            : CategoryMaterialName.windowTypeDoubleSide);
    }
  }

  bool get isValidBoxes =>
      switch (ref.watch(addQuoteEntityControllerProvider)) {
        Door() => state
            .getRange(1, 3)
            .every((element) => element.any((element) => element.selection)),
        Window() => state
            .getRange(3, 6)
            .every((element) => element.any((element) => element.selection))
      };

   */
}
