import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BottomBarNextButtonsController extends GetxController{
  static BottomBarNextButtonsController get instance => Get.find<BottomBarNextButtonsController>();

  RxList<dynamic> hymnModel =[].obs;
  final controller = PageController();
  Rx<int> currentIndex =0.obs;

  void nextPage(List<dynamic> hymns,int index){
    for( dynamic hymn in hymns){
      hymnModel.add(hymn);
    }

    currentIndex.value = index++;
    controller.jumpToPage(currentIndex.value);
  }

  void backPage(List<dynamic> hymns,int index){
    for( dynamic hymn in hymns){
      hymnModel.add(hymn);
    }

    currentIndex.value = index--;
    controller.jumpToPage(currentIndex.value);
  }




}