import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardController extends GetxController{
  static OnBoardController get instance => Get.find<OnBoardController>();

  final pagecontroller = PageController();
  Rx<int> currentIndex = 0.obs;

  void currentPage(int index) => currentIndex.value = index;


  void nextPage(){
    if(currentIndex.value == 2){
      Get.offAllNamed('/login');
    }else{
      currentIndex.value += 1;
      pagecontroller.jumpToPage(currentIndex.value);
    }
  }

  void skipBottonPressed(){
      currentIndex.value = 2;
      pagecontroller.jumpToPage(2);
  }

  void onDotClicked(int index){
    currentIndex.value = index;
    pagecontroller.jumpToPage(index);
  }





  
}