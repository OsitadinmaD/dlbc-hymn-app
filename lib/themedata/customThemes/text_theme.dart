import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/offline_screens/hymnal_screens/detail_screen/settings/controller/font_size_controller.dart';

class PTextTheme {
  PTextTheme._();

  static final controller = Get.put(FontSizeController());

  static TextTheme light =  TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: Psizes.fontSizeXXLg, fontWeight: FontWeight.bold, color: PColor.textPrimary),
    headlineMedium: const TextStyle().copyWith(fontSize: Psizes.fontSizeXLg, fontWeight: FontWeight.w600, color: PColor.textPrimary),
    headlineSmall: const TextStyle().copyWith(fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.w400, color: PColor.textPrimary),

    titleLarge: const TextStyle().copyWith(fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.w600, color: PColor.textPrimary),
    titleMedium: const TextStyle().copyWith(fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.w500, color: PColor.textPrimary),
    titleSmall: const TextStyle().copyWith(fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.w400, color: PColor.textPrimary),

    bodyLarge: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, fontWeight: FontWeight.w600, color: PColor.textPrimary),
    bodyMedium: const TextStyle().copyWith(fontSize: 5 * controller.fontSize.value, fontWeight: FontWeight.normal, color: PColor.textPrimary),
    bodySmall: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, fontWeight: FontWeight.w400, color: PColor.textPrimary),

    labelLarge: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, fontWeight: FontWeight.normal, color: PColor.textPrimary),
    labelMedium: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, fontWeight: FontWeight.normal, color: PColor.textPrimary),
  );

  static TextTheme dark = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: Psizes.fontSizeXXLg, fontWeight: FontWeight.bold, color: PColor.textwhite),
    headlineMedium: const TextStyle().copyWith(fontSize: Psizes.fontSizeXLg, fontWeight: FontWeight.w600, color: PColor.textwhite),
    headlineSmall: const TextStyle().copyWith(fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.w400, color: PColor.textwhite),

    titleLarge: const TextStyle().copyWith(fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.w600, color: PColor.textwhite),
    titleMedium: const TextStyle().copyWith(fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.w500, color: PColor.textwhite),
    titleSmall: const TextStyle().copyWith(fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.w400, color: PColor.textwhite),

    bodyLarge: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, fontWeight: FontWeight.w600, color: PColor.textwhite),
    bodyMedium: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, fontWeight: FontWeight.normal, color: PColor.textwhite),
    bodySmall: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, fontWeight: FontWeight.w400, color: PColor.textwhite),

    labelLarge: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, fontWeight: FontWeight.normal, color: PColor.textwhite),
    labelMedium: const TextStyle().copyWith(fontSize: Psizes.fontSizeSm, fontWeight: FontWeight.normal, color: PColor.textwhite),
  );
}