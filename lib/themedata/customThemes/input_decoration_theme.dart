import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PInputDecorationTheme{
  PInputDecorationTheme._();

  static InputDecorationTheme light = InputDecorationTheme(
    errorMaxLines: 3,
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Psizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: PColor.grey)
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Psizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: PColor.grey)
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Psizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: Colors.black12)
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Psizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: Colors.red)
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Psizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: Colors.orange)
    ),
    suffixIconColor: PColor.grey,
    prefixIconColor: PColor.grey,
    labelStyle: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, color: PColor.textPrimary),
    hintStyle: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, color: PColor.textPrimary),
    errorStyle: const TextStyle().copyWith(fontWeight: FontWeight.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: PColor.textPrimary.withOpacity(0.8))
  );

  static InputDecorationTheme dark = InputDecorationTheme(
    errorMaxLines: 3,
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Psizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: PColor.grey)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Psizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: PColor.grey)
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Psizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: Colors.white12)
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Psizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: PColor.error)
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Psizes.borderRadiusLg),
      borderSide: const BorderSide(width: 1, color: Colors.orange)
    ),
    suffixIconColor: PColor.grey,
    prefixIconColor: PColor.grey,
    labelStyle: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, color: PColor.textwhite),
    hintStyle: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, color: PColor.textwhite),
    errorStyle: const TextStyle().copyWith(fontWeight: FontWeight.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: PColor.textPrimary.withOpacity(0.8))
  );
}