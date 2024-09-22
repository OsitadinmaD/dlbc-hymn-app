import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../hymnal_screens/model_classes/hymn_model_class.dart';

class FavoriteService extends GetxController {
  static FavoriteService get instance => Get.find<FavoriteService>();

  var favoriteHymns = <HymnModel>[].obs;

  Color favoriteColor(HymnModel hymn){
    return  favoriteHymns.contains(hymn) == true ? 
    (!Get.isDarkMode ? const Color.fromARGB(177, 36, 43, 107) : 
    const Color.fromARGB(177, 63, 106, 199)) : (Get.isDarkMode ? PColor.light : PColor.dark);
  }

  void addToFavoriteScreen(HymnModel hymn){
    if(favoriteHymns.contains(hymn) == false){
      favoriteHymns.add(hymn);
    }else{
      favoriteHymns.remove(hymn);
    }
  }


  void removeFromFavoriteScreen(int index){
    favoriteHymns.removeAt(index);
  }
}