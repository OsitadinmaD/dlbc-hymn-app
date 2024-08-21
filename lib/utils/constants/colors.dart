import 'package:flutter/material.dart';

class PColor {
  PColor._();

  // transparent color
  static const transparentColor = Colors.transparent;

  //App basic colors
  static const primaryColor = Color.fromARGB(199, 14, 43, 170);
  static const secondaryColor = Color(0xffffe24b);
  static const accentColor = Color(0xffb0c7ff);

  //text colours
  static const textPrimary = Color(0xff333333);
  static const textsecondary = Color(0xff6c7570);
  static const textwhite = Colors.white;

  //Gradient Color
  static const Gradient linearGradient = LinearGradient(
  begin:  Alignment(0.0,0.0),
  end: Alignment(0.787, -0.787),
  colors: [
    Color(0xffff9a90),
    Color(0xfffad0c4),
    Color(0xfffad0c4),
    ] 
  );
  
  //Background color
  static const light = Colors.white;
  static const dark = Colors.black;
  static const primaryBackground = Colors.white;


  //Background container colour
  static const lightContainer = Colors.white;
  static const darkContainer = Colors.black;

  // Button colors
  static const buttonPrimary = Color.fromARGB(199, 14, 43, 170);
  static const buttonSecondary = Color(0xff6c7570);
  static const buttonDisabled = Color(0xffc4c4c4);

  //Border colours
  static const borderPrimary = Color(0xffd9d9d9);
  static const borderSecondary = Color(0xffd9d9d9);

  //Error and validation colors
  static const Color error = Colors.red;
  static const Color success = Colors.green;
  static const Color warning = Colors.yellow;
  static const Color info = Colors.blue;

  //Neutral colours
  static const Color black = Colors.black;
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color grey = Colors.grey;
  static const Color softGrey  = Color(0xfff4f4f4);
  static const Color lightGrey = Color(0xfff9f9f9);
  static const Color white = Colors.white;
}