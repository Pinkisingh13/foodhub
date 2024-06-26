import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class PChipTheme {
  PChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: PColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: PColors.black),
    selectedColor: PColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: PColors.white,
  );

}
