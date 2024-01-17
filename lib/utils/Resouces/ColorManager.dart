import 'package:flutter/material.dart';

mixin ColorManager {
  static const Color primary = Color(0xFF006492);
  static const Color onPrimary = Color(0xFFE0E0FF);
  static const Color primary20opacity = Color(0x33006492);
  static const Color secondary = Color(0xFF545F70);
  static const Color surface = Color(0xFFF3F3F6);
  static const Color onSurface = Color(0xFF486284);
  static const Color primaryContainer = Color(0xFFFAF9FD);
  static const Color tertiaryContainer = Color(0xFFF4D9FF);
  static const Color error = Color(0xCCBA1A1A);
  static const Color shadow = Color(0x40000000);


  static const Color onSurfaceVariantLightYellow = Color(0xFFFFF7CB);
  static const Color onSurfaceVariant1LightGreen = Color(0xFFD4FFB2);
  static const Color onSurfaceVariant1LightPink = Color(0xFFEEC5FF);
  static const Color onSurfaceVariant1LightBlue = Color(0xFFC8ECE5);
  static const Color onSurfaceVariant1LightGray = Color(0xFFFAFFFA);
  static const Color onSurfaceVariant1LightRedPink = Color(0xFFFFC8B7);
  static const Color onSurfaceVariant1BlueGreen = Color(0xFFBBFFDA);
  static const Color onSurfaceVariant1LightBlueVery = Color(0xFFF0FFFB);
  static const Color onSurfaceVariant1RedPink = Color(0xFFFFB9DF);
  static const Color onSurfaceVariant1LightRedPink2 = Color(0xFFFFDDEB);
  static const Color onSurfaceVariant1LightGreenBlue = Color(0xFFD9FDFF);

  // unused colors
  static const Color background = Color(0xFFD8E7EF);
  static const Color onBackground = Color(0xFF001E2F);
  static const Color onPrimaryContainer = Color(0xFF001E2E);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color secondaryContainer = Color(0xFFE9DDFF);
  static const Color onSecondaryContainer = Color(0xFF22005D);
  static const Color tertiary = Color(0xFF99405F);
  static const Color onTertiary = Color(0xFFFFFFFF);
  static const Color onTertiaryContainer = Color(0xFF3F001C);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color errorContainer = Color(0xCCBA1A1A);
  static const Color onErrorContainer = Color(0xFF410002);
  static const Color surfaceVariant = Color(0xFFDDE3EA);
  static const Color outline = Color(0xFF71787E);
  static const Color inverseSurface = Color(0xFF00344D);
  static const Color onInverseSurface = Color(0xFFE5F2FF);
  static const Color inversePrimary = Color(0x7787CEFF);
  static const Color surfaceTint = Color(0xFF006590);

  static const ColorScheme lightColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: onPrimary,
      secondary: secondary,
      onSecondary: onSecondary,
      error: error,
      onError: onError,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: primary);
}
