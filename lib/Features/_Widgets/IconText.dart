import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/Providers/SvgProvider.dart';
import '../../utils/Resouces/ColorManager.dart';
import '../../utils/Resouces/ValuesManager.dart';

class IconText extends ConsumerWidget {
  final String iconPath;
  final String text;

  const IconText({super.key, required this.iconPath, required this.text});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        SizedBox(
            width: AppSizeManager.s20,
            height: AppSizeManager.s20,
            child: ref.read(SvgLoaderProvider(iconPath, colored: true))),
        const SizedBox(width: AppSizeManager.s5),
        Text(text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: ColorManager.secondary))
      ],
    );
  }
}
