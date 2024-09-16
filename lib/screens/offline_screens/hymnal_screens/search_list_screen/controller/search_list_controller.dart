import 'dart:convert';

import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/contents_screen/screens/topical_index_screen/controller/topical_index_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../contents_screen/screens/alphabetic_order _screen/controller/general_index_controller.dart';
import '../../model_classes/hymn_model_class.dart';

class SearchBarController extends GetxController{
  static SearchBarController get instance => Get.find<SearchBarController>();

  final topicalIndexController = Get.put(TopicalIndexController());
  final generalIndexController = Get.put(GeneralIndexController());



  Rx<bool> isFavorited = false.obs;
  var searchResult = <HymnModel>[].obs;
  var hymnListViews = <HymnModel>[].obs;
  var favoriteHymns = <HymnModel>[].obs;
  final textController = TextEditingController();

  Future<void> getHymnModel(String hymnJson) async {
    String hymnJsonResponse = await rootBundle.loadString(hymnJson);
    final hymnData = await json.decode(hymnJsonResponse);

    for(Map<String,dynamic> hymn in hymnData){
      hymnListViews.add(HymnModel.fromJson(hymn));
    }
   }

   
   @override
   void onInit() {
    super.onInit();
    getHymnModel('assets/hymn_json/all_hymns.json');
  }

  void onSearchQueryChanged(String query){
    searchResult.clear();
    if(query.isEmpty){
      return;
    }

    for(var hymn in hymnListViews){
      if(hymn.title.toString().toUpperCase().contains(query.toUpperCase()) || hymn.title.toString().toLowerCase().contains(query.toLowerCase())
       || hymn.subtitle.toString().toUpperCase().contains(query.toUpperCase()) || hymn.subtitle.toString().toLowerCase().contains(query.toLowerCase())){
        searchResult.add(hymn);
       }
    }
  }

  
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