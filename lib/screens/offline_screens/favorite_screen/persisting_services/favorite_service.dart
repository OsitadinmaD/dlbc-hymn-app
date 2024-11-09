import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../utils/constants/colors.dart';
import '../../hymnal_screens/model_classes/hymn_model_class.dart';

class FavoriteService extends GetxService {
  static FavoriteService get instance => Get.find<FavoriteService>();

  var favoriteHymns = <HymnModel>[].obs;
  Rx<bool> isFav = false.obs;
  Rx<Color> favColor = (Get.isDarkMode ? PColor.light : PColor.dark).obs;
   
  late SharedPreferencesWithCache sharedPref;


  initSharedPrefs() async {
    sharedPref = await  SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
        allowList: <String>{'favoriteStore','isfavorited', 'favoriteColor'},
    ),);
    readFromSharedPref(); 
    readFavoriteBool();
    getFavColor();
  }

  @override
  void onInit() {
    initSharedPrefs();
    super.onInit();
  }

  saveToSharedPref() {
    List<String> favoriteHymnString = favoriteHymns.map((hymn) => jsonEncode(hymn.toJson())).toList();
    sharedPref.setStringList('favoriteStore', favoriteHymnString);
  }
  readFromSharedPref() {
    List<String>? favoriteHymnString = sharedPref.getStringList('favoriteStore');
    if(favoriteHymnString != null){
      return favoriteHymns.value = favoriteHymnString.map((hymn) => HymnModel.fromJson(json.decode(hymn))).toList();
    }
    return [];
  }

  void setFavColor({required Color color}) async {
    await sharedPref.setInt('favoriteColor', color.value);
  }
  void getFavColor(){
    final colorInt = sharedPref.getInt('favoriteColor');
    if(colorInt != null){
      favColor.value = Color(colorInt);
    }
  }


  Color favoriteColor(HymnModel hymn){
    if(isFavorited(hymn) == true){
      Color favoritedColor = (!Get.isDarkMode ? const Color.fromARGB(177, 36, 43, 107) : const Color.fromARGB(177, 63, 106, 199));
      favColor.value = favoritedColor;
      setFavColor(color: favColor.value);
      return favColor.value;
    }else{
      Color favoritedColor = (Get.isDarkMode ? PColor.light : PColor.dark);
      favColor.value = favoritedColor;
      setFavColor(color: favColor.value);
      return favColor.value;
    }
  }

  void _addToFavoriteScreen(HymnModel hymn) {
      favoriteHymns.add(hymn);
      saveToSharedPref();
  }

  void _removeHymnFromFavorite(HymnModel hymn){
    favoriteHymns.remove(hymn);
    saveToSharedPref();
  }

  void setFavoritedBool({required bool favorited}) async {
    await sharedPref.setBool('isfavorited', favorited);
  }
  bool readFavoriteBool(){
    bool? favorited = sharedPref.getBool('isfavorited');
    if(favorited != null){
      return isFav.value = favorited;
    }
    return false;
  }

  bool isFavorited(HymnModel hymn) {
    bool favorited = false;
    setFavoritedBool(favorited: favorited);
    for(var hymns in favoriteHymns){
      if(hymns.title.toString().toLowerCase().contains(hymn.title.toString().toLowerCase())){
        favorited = true;
        setFavoritedBool(favorited: favorited);
      }
    }
    isFav.value = favorited;
    return isFav.value;
  }

  void toggleColor(HymnModel hymn){
    if(isFavorited(hymn)){
      isFav.value = true;
      sharedPref.setBool('isfavorited', isFav.value);
    }else{
      isFav.value = false;
      sharedPref.setBool('isfavorited', isFav.value);
    }
  }

  void toggleFavoriteHymns(HymnModel hymn){
    isFavorited(hymn) ? _removeHymnFromFavorite(hymn) : _addToFavoriteScreen(hymn);
  }


  void removeFromFavoriteScreen(int index) async {
    favoriteHymns.removeAt(index);
    saveToSharedPref();
  }
}