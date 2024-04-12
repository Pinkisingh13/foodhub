import 'package:flutter/material.dart';
import 'package:foodhub/utils/constants/colors.dart';
import 'package:foodhub/utils/theme/widgets/textbutton_theme.dart';

import 'widgets/appbar_theme.dart';
import 'widgets/checkbox_theme.dart';
import 'widgets/chip_theme.dart';
import 'widgets/elevated_button_theme.dart';
import 'widgets/outlined_button_theme.dart';
import 'widgets/text_field_theme.dart';
import 'widgets/text_theme.dart';

class PAppTheme {
  PAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    disabledColor: PColors.lightGrey,
    brightness: Brightness.light,
    primaryColor: PColors.primary,
    textTheme: PTextTheme.lightTextTheme,
    chipTheme: PChipTheme.lightChipTheme,
    scaffoldBackgroundColor: PColors.white,
    appBarTheme: PAppBarTheme.lightAppBarTheme,
    checkboxTheme: PCheckboxTheme.lightCheckboxTheme,
    textButtonTheme: PTextButtonTheme.lightTextButtonTheme,
    elevatedButtonTheme: PElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: POutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: PTextFormFieldTheme.lightInputDecorationTheme,
  );
}
