import 'package:get/get.dart';

class FontSizeController extends GetxController{
  static FontSizeController get instance => Get.find<FontSizeController>();

  Rx<double> fontSize = 16.0.obs;

  void setFontSize(double size){
    fontSize.value = size;
  }
}