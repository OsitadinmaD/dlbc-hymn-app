import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPageController extends GetxController{
  static DetailsPageController get instance => Get.find<DetailsPageController>();

  final pageController = PageController();
  final currentIndex = 0.obs;

  getToNextIndex(){
    currentIndex.value += 1;
    pageController.jumpTo(currentIndex.value.toDouble());
  }

  getToPreviousIndex(){
    currentIndex.value -= 1;
    pageController.jumpTo(currentIndex.value.toDouble());
  }
}