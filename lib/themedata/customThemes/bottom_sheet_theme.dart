import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PBottomSheetTheme{
  PBottomSheetTheme._();

  static BottomSheetThemeData light = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: PColor.light,
    elevation: 0,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Psizes.borderRadiusXLg)),
    modalBackgroundColor: Colors.white
  );

  static BottomSheetThemeData dark = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: PColor.dark,
    elevation: 0,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Psizes.borderRadiusXLg)),
    modalBackgroundColor: PColor.black
  );
}