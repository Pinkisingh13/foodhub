import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class POutlinedButtonTheme {
  POutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: PColors.dark,
      // side: BorderSide(color: PColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: PColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: PSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(PSizes.buttonRadius)),
    ),
  );
}
