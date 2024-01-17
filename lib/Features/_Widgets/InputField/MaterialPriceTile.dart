import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Features/_Widgets/CheckBoxTile/CheckBoxTile.dart';
import 'package:his/Features/_Widgets/CheckBoxTile/Models/CheckBoxEntity.dart';

class MaterialPriceTile extends ConsumerWidget {
  final CheckBoxEntity checkBoxTile;
  final TextEditingController textFormController;
  final String formText;
  final String? errorText;
  final void Function() onChanged;
  final void Function(String) onTextFormFieldChanged;

  const MaterialPriceTile(
      {super.key,
      required this.checkBoxTile,
      required this.textFormController,
      required this.onTextFormFieldChanged,
      required this.formText,
      required this.errorText,
      required this.onChanged});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CheckBoxTile(
          checkBoxEntity: checkBoxTile,
          onChanged: () => onChanged(),
        ),
        Flexible(
          child: Center(
            child: TextFormField(
                controller: textFormController,
                onChanged: (value) => onTextFormFieldChanged(value),
                decoration: InputDecoration(
                    labelText: formText,
                    hintText: formText,
                    errorText: errorText)),
          ),
        ),
      ],
    );
  }
}
