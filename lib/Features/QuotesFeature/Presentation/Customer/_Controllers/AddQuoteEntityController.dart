import 'dart:developer';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:his/Features/_SharedDomain/Services/Service.dart';
import 'package:his/Features/_Widgets/CheckBoxTile/Models/CheckBoxEntity.dart';
import 'package:his/utils/SharedOperations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../Entities/AddQuoteEntity.dart';

part 'AddQuoteEntityController.g.dart';

@riverpod
class AddQuoteEntityController extends _$AddQuoteEntityController
    with SharedUserOperations {
  @override
  AddQuoteEntity build() {
    return AddQuoteEntity.emptyDoor();
  }

  void setGeneralQuoteType(int boxIndex, bool toVal) {
    switch ((boxIndex, toVal)) {
      case (0, true):
        state = AddQuoteEntity.emptyDoor();
        break;
      case (1, true):
        state = AddQuoteEntity.emptyWindow();
        break;
    }
  }

  void setGeneralMaterial(int boxIndex, bool toVal) => state = state.copyWith(
      material: changeListValues(state.material, boxIndex, toVal));

  void setGeneralHeight(String newHeightVal) => state = state.copyWith(
      heightField:
          state.heightField.getNewMaterialInputFieldWithText(newHeightVal));

  void setGeneralWidth(String newWidthVal) => state = state.copyWith(
      widthField:
          state.widthField.getNewMaterialInputFieldWithText(newWidthVal));

  void setGeneralUnits(String newUnitsVal) => state = state.copyWith(
      numberOfUnitsField: state.numberOfUnitsField
          .getNewMaterialInputFieldWithText(newUnitsVal));

  void setGeneralColor(String newColorVal) => state = state.copyWith(
      colorField: state.colorField
          .getNewMaterialInputFieldWithText(newColorVal, isText: true));

  void setDoorHandleType(int boxIndex, bool toVal) => switch (state) {
        Door() => state = (state as Door).copyWith(
            doorHandle:
                changeListValues((state as Door).doorHandle, boxIndex, toVal)),
        Window() => null
      };

  void setWindowType(int boxIndex, bool toVal) => switch (state) {
        Window() => state = (state as Window).copyWith(
            windowType: changeListValues(
                (state as Window).windowType, boxIndex, toVal)),
        Door() => null
      };

  void setWindowGlass(int boxIndex, bool toVal) => switch (state) {
        Window() => state = (state as Window).copyWith(
            windowGlass: changeListValues(
                (state as Window).windowGlass, boxIndex, toVal)),
        Door() => null
      };

  bool get isValidInput {
    return state.widthField.isValid &&
        state.heightField.isValid &&
        state.numberOfUnitsField.isValid &&
        state.colorField.isValid &&
        state.material.any((element) => element.selection) &&
        isValidUniqueBoxes;
  }

  bool get isValidUniqueBoxes => switch (state) {
        Door() =>
          (state as Door).doorHandle.any((element) => element.selection),
        Window() =>
          (state as Window).windowGlass.any((element) => element.selection) &&
              (state as Window).windowType.any((element) => element.selection)
      };

  IList<CheckBoxEntity> changeListValues(
      IList<CheckBoxEntity> boxes, int boxIndex, bool toVal) {
    if (boxes.elementAt(boxIndex).selection && !toVal) return boxes;
    for (int i = 0; i < boxes.length; i++) {
      boxes = boxes.replaceAll(
          from: boxes.elementAt(i),
          to: checkBoxEntity(text: boxes.elementAt(i).text));
    }
    boxes = boxes.replace(boxIndex,
        checkBoxEntity(text: boxes.elementAt(boxIndex).text, selection: toVal));
    return boxes;
  }
}
