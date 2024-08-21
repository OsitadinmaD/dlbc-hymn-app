import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HymnHomeController extends GetxController{
  static HymnHomeController get instance => Get.find<HymnHomeController>();

  final controller = PageController();
  Rx<int> count = 0.obs;

  currentIndex(int index) => index = count.value; 

  void onDotClicked(int index){
    controller.jumpToPage(index);
  }

 
  GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();


 

  void openAndCloseSideMenu(){
    if(sideMenuKey.currentState!.isOpened){
      sideMenuKey.currentState!.closeSideMenu();
    }else{
      sideMenuKey.currentState!.openSideMenu();
    }
  }  


}