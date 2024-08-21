import 'package:flutter/material.dart';

class PConstants {
  PConstants._();

  static Color hymnAppBarColor =  const Color.fromARGB(199, 14, 43, 170);

  static Text hymnTitle({String? title}){
    return Text(
      title!,
      style: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
     ),
    );
  }

  static Text hymnNum({int? number}) => Text(
      'GHS $number',
      style: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
     ),
    );

}