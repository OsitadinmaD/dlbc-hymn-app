import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../favorite_screen/persisting_services/favorite_service.dart';
import '../../model_classes/hymn_model_class.dart';

class SearchBarController extends GetxService{
  static SearchBarController get instance => Get.find<SearchBarController>();
  final favoriteController = Get.put(FavoriteService());


  var searchResult = <HymnModel>[].obs;
  var hymnListViews = <HymnModel>[].obs;
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
    return  favoriteController.favoriteHymns.contains(hymn) ? 
       (!Get.isDarkMode ? const Color.fromARGB(177, 36, 43, 107) : 
         const Color.fromARGB(177, 63, 106, 199)) : (Get.isDarkMode ? PColor.light : PColor.dark);
  }
}