import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PAppBarTheme {
  PAppBarTheme._();

  static AppBarTheme light = const AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: false,
    foregroundColor: Colors.black,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TextStyle(fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.w600, color: PColor.textPrimary),
    iconTheme: IconThemeData(color: Colors.black,size: Psizes.iconXs),
    actionsIconTheme: IconThemeData(color: Colors.black,size: Psizes.iconXs),
    elevation: 0,
    scrolledUnderElevation: 0
  );

  static AppBarTheme dark = const AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: false,
    foregroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TextStyle(fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.w600, color: PColor.textwhite),
    iconTheme: IconThemeData(color: Colors.white,size: Psizes.iconXs),
    actionsIconTheme: IconThemeData(color: Colors.white,size: Psizes.iconXs),
    elevation: 0,
    scrolledUnderElevation: 0
  );
}