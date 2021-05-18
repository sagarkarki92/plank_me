import 'package:flutter/material.dart';
import 'package:plank_me/core/configs.dart';
import 'package:plank_me/presentation/ui_utils/colors.dart';
import 'package:plank_me/presentation/ui_utils/text_theme.dart';

class AppTheme {
  static ThemeData get _baseTheme {
    return ThemeData(
      fontFamily: AppConfig.secondaryFontFamily,
      primaryColor: AppColors.primary,
      primaryColorLight: AppColors.primaryLight,
      primaryColorDark: AppColors.primaryDark,
      accentColor: AppColors.secondary,
      errorColor: AppColors.secondary,
      primaryColorBrightness: Brightness.light,
    );
  }

  static ThemeData light() {
    return _baseTheme.copyWith(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.lightSurface,
      textTheme: ApptextStyles.textTheme,
      iconTheme: _lightIconTheme,
      elevatedButtonTheme: _lightButtonTheme,
      visualDensity: VisualDensity.comfortable,
    );
  }

  static ThemeData dark() {
    return _baseTheme.copyWith(
      scaffoldBackgroundColor: AppColors.darkSurface,
      brightness: Brightness.dark,
    );
  }

  static ElevatedButtonThemeData get _lightButtonTheme =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          minimumSize: MaterialStateProperty.all<Size>(
            const Size(90, 40),
          ),
        ),
      );

  static IconThemeData get _lightIconTheme => const IconThemeData(
        size: 24.0,
        color: AppColors.darkAccent,
      );
}
