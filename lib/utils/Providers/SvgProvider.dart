import 'package:flutter_svg/flutter_svg.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/material.dart';

import '../Resouces/ColorManager.dart';

part 'SvgProvider.g.dart';

@riverpod
class SvgLoader extends _$SvgLoader {
  @override
  SvgPicture build(String path, {bool colored = false, bool red = false}) {
    return SvgPicture.asset(path,
        colorFilter: colored
            ? red
                ? const ColorFilter.mode(ColorManager.error, BlendMode.srcIn)
                : const ColorFilter.mode(ColorManager.primary, BlendMode.srcIn)
            : null);
  }
}
