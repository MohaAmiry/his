import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../../utils/Resouces/ColorManager.dart';
import '../../../utils/Resouces/ValuesManager.dart';
import 'Models/CheckBoxEntity.dart';

class MultiCheckBoxTile extends ConsumerStatefulWidget {
  final CheckBoxEntity checkBoxEntity;
  final int index;
  final void Function(int, bool) onChanged;

  const MultiCheckBoxTile(
      {super.key,
      required this.checkBoxEntity,
      required this.index,
      required this.onChanged});

  @override
  ConsumerState createState() => _CheckBoxTileState();
}

class _CheckBoxTileState extends ConsumerState<MultiCheckBoxTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: PaddingValuesManager.p5, vertical: 2),
      decoration: BoxDecoration(
        color: widget.checkBoxEntity.selection
            ? ColorManager.primary20opacity
            : ColorManager.tertiaryContainer,
        border: Border.all(color: Colors.transparent),
        borderRadius:
            const BorderRadius.all(Radius.circular(AppSizeManager.s20)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
              value: widget.checkBoxEntity.selection,
              onChanged: (value) => widget.onChanged(widget.index, value!),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          Text(widget.checkBoxEntity.text,
              style: Theme.of(context).textTheme.bodyMedium)
        ],
      ),
    );
  }
}
