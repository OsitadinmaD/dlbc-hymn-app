import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../model_classes/hymn_model_class.dart';

class SearchBarController extends GetxController{
  static SearchBarController get instance => Get.find<SearchBarController>();



  Rx<bool> isFavorited = false.obs;
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
}