import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PChipThemeData {
  PChipThemeData._();

  static ChipThemeData light = ChipThemeData(
    checkmarkColor: Colors.white,
    labelStyle: const TextStyle(color: PColor.textPrimary),
    disabledColor: PColor.grey.withOpacity(0.6),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    selectedColor: Colors.blue,
  );

  static ChipThemeData dark = ChipThemeData(
    checkmarkColor: Colors.white,
    labelStyle: const TextStyle(color: PColor.textwhite),
    disabledColor: Colors.grey.withOpacity(0.6),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    selectedColor: Colors.blue,
  );
}