import 'package:flutter/material.dart';
import 'package:plank_me/presentation/ui_utils/colors.dart';

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get text => theme.textTheme;
}

extension TextWeight on TextStyle {
  
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get thin => copyWith(fontWeight: FontWeight.w300);
  TextStyle withColor(Color color) => copyWith(color: color);
  TextStyle get white => copyWith(color: AppColors.lightAccent);
}
