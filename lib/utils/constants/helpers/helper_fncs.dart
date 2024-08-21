import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


class PHelperFunctions {
  static Color? getColor(String value){
    // product specific colors are designed here and it will match the attribute color and return specific colour

    switch(value){
      case 'Green' :
      return Colors.green;
      case 'Red' : 
      return Colors.red;
      case 'Blue' : 
      return Colors.blue;
      case 'Pink' : 
      return Colors.pink;
      case 'Grey' :
      return Colors.grey;
      case 'Purple' :
      return Colors.purple;
      case 'Black' :
      return Colors.black;
      case 'White' :
      return Colors.white;
      case 'Orange' :
      return Colors.orange;
      default: 
      return null;
      }
  }

  static void showSnackBar(String message){
    ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(content: Text(message,textAlign: TextAlign.center,)),);
  }

  static void showAlert(String title, String message){
    showDialog(
      context: Get.context!,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text(title),
          content:  Text(message),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

   static void navigatorToScreen(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => screen),
  );
   }

   static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength){
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
   }

   static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
   }

   static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
   }

   static double toolBarHeight(){
    return kToolbarHeight;
   }

   static double bottomNavigationBarHeight(){
    return kBottomNavigationBarHeight;
   }

   static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
   }

   static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
   }

   static String getFormattedDate(DateTime date, {String format = 'dd MMM yyyy'}){
    return DateFormat(format).format(date);
   }
//might not need this now
   static List<T> removeDuplicates<T>(List<T> list){
    return list.toSet().toList();
   }

   static List<Widget> wrapWidgets(List<Widget> widgets, int rowsize){
    final wrappedList = <Widget>[];
    for (var i = 0; i <widgets.length; i += rowsize){
      final rowChildren = widgets.sublist(i, i + rowsize > widgets.length ? widgets.length : i + rowsize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
   }
}