import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PCheckBoxTheme {
  PCheckBoxTheme._();

  static CheckboxThemeData light = CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return PColor.primaryColor;
      }else{
        return Colors.transparent;
      }
    }),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
  );
  

  static CheckboxThemeData dark = CheckboxThemeData(
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return PColor.primaryColor;
      }else{
        return Colors.transparent;
      }
    }),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
  );
}