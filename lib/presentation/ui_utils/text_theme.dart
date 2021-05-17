import 'package:flutter/material.dart';
import 'package:plank_me/core/configs.dart';
import 'package:plank_me/presentation/ui_utils/colors.dart';

class ApptextStyles {
  ApptextStyles._();
  static TextTheme get textTheme => TextTheme(
        headline4: _headline4,
        headline5: _headline5,
        headline6: _headline6,
        bodyText1: _body,
        bodyText2: _body2,
      );

  static TextStyle get _baseHeadline => TextStyle(
        fontFamily: AppConfig.secondaryFontFamily,
        color: AppColors.dark,
      );

  static TextStyle get _headline4 => _baseHeadline.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get _headline5 => _baseHeadline.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get _headline6 => _baseHeadline.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get _body => TextStyle(
        fontFamily: AppConfig.primaryFontFamily,
        color: AppColors.dark,
        fontSize: 16,
      );
  static TextStyle get _body2 => TextStyle(
        fontFamily: AppConfig.primaryFontFamily,
        color: AppColors.darkAccent,
        fontSize: 14,
      );
}
