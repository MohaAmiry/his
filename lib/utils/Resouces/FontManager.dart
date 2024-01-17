import 'package:flutter/material.dart';

import 'ColorManager.dart';

mixin FontManager{
  static const String fontFamily = "Roboto";
}

mixin FontWeightManager{
  static const FontWeight regularW = FontWeight.w400;
  static const FontWeight mediumW = FontWeight.w500;
  static const FontWeight boldW = FontWeight.w700;
}


mixin FontSizeManager {
  static const double s10 = 10;
  static const double s12 = 12;
  static const double s14 = 14;
  static const double s16 = 16;
  static const double s20 = 20;
}


mixin TextStyleManager {
  static TextStyle _getTextStyle(double size, FontWeight weight, Color color,
      {String family = FontManager.fontFamily}) {
    return TextStyle(
      fontFamily: family,
      fontSize: size,
      fontWeight: weight,
      color: color,
    );
  }

  static TextStyle getRegularStyle(
      {double size = FontSizeManager.s12,
        FontWeight weight = FontWeightManager.regularW,
        Color color = ColorManager.primary}) {
    return _getTextStyle(size, weight, color);
  }

  static TextStyle getMediumStyle(
      {double size = FontSizeManager.s14,
        FontWeight weight = FontWeightManager.mediumW,
        Color color = ColorManager.primary}) {
    return _getTextStyle(size, weight, color);
  }

  static TextStyle getBoldStyle(
      {double size = FontSizeManager.s10,
        FontWeight weight = FontWeightManager.boldW,
        Color color = ColorManager.primary}) {
    return _getTextStyle(size, weight, color);
  }
}

