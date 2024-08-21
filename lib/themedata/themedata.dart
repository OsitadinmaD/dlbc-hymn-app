import 'package:dlcm_ghs/themedata/customThemes/app_bar_theme.dart';
import 'package:dlcm_ghs/themedata/customThemes/bottom_sheet_theme.dart';
import 'package:dlcm_ghs/themedata/customThemes/check_box_theme.dart';
import 'package:dlcm_ghs/themedata/customThemes/chip_theme_data.dart';
import 'package:dlcm_ghs/themedata/customThemes/elevated_button_theme.dart';
import 'package:dlcm_ghs/themedata/customThemes/input_decoration_theme.dart';
import 'package:dlcm_ghs/themedata/customThemes/text_theme.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PThemeData {
  PThemeData._();

  static lightTheme(){
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: PColor.white,
      primaryColor: PColor.primaryColor,
      brightness: Brightness.light,
      elevatedButtonTheme: PElevatedButton.light,
      appBarTheme: PAppBarTheme.light ,
      textTheme: PTextTheme.light,
      bottomSheetTheme: PBottomSheetTheme.light,
      checkboxTheme: PCheckBoxTheme.light,
      chipTheme: PChipThemeData.light,
      inputDecorationTheme: PInputDecorationTheme.light,
    );
  }

  static darkTheme(){
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: PColor.black,
      primaryColor: PColor.primaryColor,
      brightness: Brightness.dark,
      elevatedButtonTheme: PElevatedButton.dark,
      appBarTheme: PAppBarTheme.dark ,
      textTheme: PTextTheme.dark,
      bottomSheetTheme: PBottomSheetTheme.dark ,
      checkboxTheme: PCheckBoxTheme.dark ,
      chipTheme: PChipThemeData.dark,
      inputDecorationTheme: PInputDecorationTheme.dark
    );
  }
}