import 'dart:convert';

import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/model_classes/general_index_model_class.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class GeneralIndexController extends GetxController{
  static GeneralIndexController get instance => Get.find<GeneralIndexController>();

  var generalIndexedHymns = <GeneralIndexModelClass>[].obs;

  Future<void> getIndexedHymns(String json) async {
    final String hymnResponse = await rootBundle.loadString(json);
    final hymnData = await jsonDecode(hymnResponse);

    for(dynamic hymns in hymnData){
      generalIndexedHymns.add(GeneralIndexModelClass.fromJson(hymns));
    }
  }

  @override
  void onInit() {
    super.onInit();
    getIndexedHymns('assets/hymn_json/alphabet_order.json');
  }
}