import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class PTextFormFieldTheme {
  PTextFormFieldTheme._();

// Light InputDecoration
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: PColors.darkGrey,
    suffixIconColor: PColors.darkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: PSizes.fontSizeMd, color: PColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: PSizes.fontSizeSm, color: PColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: PColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: PColors.warning),
    ),
  );
}
