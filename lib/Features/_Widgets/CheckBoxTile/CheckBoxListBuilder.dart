import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/Resouces/ValuesManager.dart';
import 'CheckBoxTile.dart';
import 'Controllers/CheckBoxController.dart';
import 'Models/CheckBoxEntity.dart';
import 'MultiSelectCheckBoxTile.dart';

class CheckBoxListBuilder extends ConsumerStatefulWidget {
  final IList<CheckBoxEntity> checkBoxes;
  final void Function(int, bool) onChange;

  const CheckBoxListBuilder(
      {super.key, required this.checkBoxes, required this.onChange});

  @override
  ConsumerState createState() => _CheckBoxListBuilderState();
}

class _CheckBoxListBuilderState extends ConsumerState<CheckBoxListBuilder> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (int i = 0; i < widget.checkBoxes.length; i++)
          Padding(
            padding: const EdgeInsets.all(PaddingValuesManager.p5),
            child: MultiCheckBoxTile(
              checkBoxEntity: widget.checkBoxes.elementAt(i),
              index: i,
              onChanged: (boxIndex, toVal) => widget.onChange(boxIndex, toVal),
            ),
          ),
      ],
    );
  }
}
