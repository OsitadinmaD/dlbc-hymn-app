import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PElevatedButton {
  PElevatedButton._();
  

  static ElevatedButtonThemeData light = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: PColor.buttonPrimary,
      foregroundColor:  PColor.textwhite,
      disabledBackgroundColor: PColor.buttonDisabled,
      disabledForegroundColor: PColor.buttonDisabled,
      padding: const EdgeInsets.all(Psizes.sm),
      elevation: 0,
      side: const BorderSide(color: PColor.grey,),
      textStyle: const TextStyle(fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.normal, color: PColor.textwhite),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Psizes.borderRadiusXLg)),
    )
  );

  static ElevatedButtonThemeData dark = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: PColor.buttonPrimary,
      foregroundColor:  PColor.textwhite,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      padding: const EdgeInsets.all(Psizes.sm),
      elevation: 0,
      side: const BorderSide(color: PColor.darkGrey,),
      textStyle: const TextStyle(fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.normal, color: PColor.textwhite),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Psizes.borderRadiusXLg)),
    )
  );
}