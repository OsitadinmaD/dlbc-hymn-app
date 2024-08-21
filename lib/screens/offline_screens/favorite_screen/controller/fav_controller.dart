

import 'dart:convert';

import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/model_classes/hymn_model_class.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class FavoriteScreenController extends GetxController{
  static FavoriteScreenController get instance => Get.find<FavoriteScreenController>();

   var hymnnListViews = <HymnModel>[].obs;

   Future<void> getHymnModel(String hymnJson) async {
    String hymnJsonResponse = await rootBundle.loadString(hymnJson);
    final hymnData = await json.decode(hymnJsonResponse);

    for(Map<String,dynamic> hymn in hymnData){
      hymnnListViews.add(HymnModel.fromJson(hymn));
    }
   }

   @override
   void onInit() {
    super.onInit();
    getHymnModel('assets/hymn_json/hymns.json');
  }
}