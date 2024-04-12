import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/* -- Light & Dark Text Button Themes -- */
class PTextButtonTheme {
  PTextButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightTextButtonTheme  = TextButtonThemeData(
    style: TextButton.styleFrom(
      elevation: 0,
      foregroundColor: PColors.textPrimary,
      // backgroundColor: PColors.primary,
      // disabledForegroundColor: PColors.darkGrey,
      // disabledBackgroundColor: PColors.buttonDisabled,
      // side: const BorderSide(color: PColors.primary),
      // padding: const EdgeInsets.symmetric(vertical: PSizes.buttonHeight),
  
      textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(PSizes.buttonRadius),
      // ),
    ),
  );

}