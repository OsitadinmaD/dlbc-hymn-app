import 'dart:convert';

import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/model_classes/topical_index_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class TopicalIndexController extends GetxController{
  static TopicalIndexController get instance => Get.find<TopicalIndexController>();

  var topicalIndexContents = <TopicalIndexModel>[].obs;

  Future<void> getHymnContent(String contentJson) async{
    final String contentResponse = await rootBundle.loadString(contentJson);
    final contentData = await jsonDecode(contentResponse);

    for(Map<String, dynamic> hymn in contentData){
      topicalIndexContents.add(TopicalIndexModel.fromJson(hymn));
    }
  }

  @override
  void onInit() {
    super.onInit();
    getHymnContent('assets/hymn_json/theme_order.json');
  }
}