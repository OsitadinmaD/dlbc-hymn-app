
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HymnColorController extends GetxService{
  
  Rx<int> selectedChorusColor = 4.obs ;
  Rx<int> selectedStanzaColor = 8.obs;
  
  Rx<Color> chorusColor = (Get.isDarkMode ? PColor.light : PColor.dark).obs;
  Rx<Color> stanzaColor = (Get.isDarkMode ? PColor.light : PColor.dark).obs;
  late SharedPreferencesWithCache _sharedPref;

  void initializeSharedPref() async {
    _sharedPref = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
        allowList: <String>{'chorusColor','stanzaColor','chorusColorIndex','stanzaColorIndex','chorusBorderColor','stanzaBorderColor'}
      ));
      _readChorusSharedPrefColor();
      _readStanzaSharedPrefColor();
      _readChorusSharedPrefIndex();
      _readStanzaSharedPrefIndex();
  }

  @override
  void onInit() {
    initializeSharedPref();
    super.onInit();
  }

  void _readChorusSharedPrefColor() {
    final colorInt = _sharedPref.getInt('chorusColor');
    if(colorInt != null){
      chorusColor.value = Color(colorInt);
    }else{
      chorusColor.value = (Get.isDarkMode ? PColor.light : PColor.dark);
    }
  }

  void _readStanzaSharedPrefColor() {
    final colorInt = _sharedPref.getInt('stanzaColor');
    if(colorInt != null){
      stanzaColor.value = Color(colorInt);
    }else{
      stanzaColor.value = (Get.isDarkMode ? PColor.light : PColor.dark);
    }
  }

  void _readStanzaSharedPrefIndex(){
    final selectedStanzaColour = _sharedPref.getInt('stanzaColorIndex');
    if(selectedStanzaColour != null){
      selectedStanzaColor.value = selectedStanzaColour;
    }
  }

  void _readChorusSharedPrefIndex(){
    final selectedChorusColour = _sharedPref.getInt('chorusColorIndex');
    if(selectedChorusColour != null){
      selectedChorusColor.value = selectedChorusColour;
    }
  }

  void _saveChorusColor({required Color color}) async {
    await _sharedPref.setInt('chorusColor', color.value);
  }

  void _saveStanzaColor({required Color color}) async {
    await _sharedPref.setInt('stanzaColor', color.value);
  }
  


  Widget chorusColorRadioButton({required int index, required Color color,}){
    return InkWell(
      onTap: () {
        selectedChorusColor.value = index;
        chorusColor.value = color;
        _saveChorusColor(color: color);
        _sharedPref.setInt('chorusColorIndex', selectedChorusColor.value);
      },
      child: Container(
        width: PHelperFunctions.screenWidth()*0.2,
        height: PHelperFunctions.screenHeight()*0.05,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            style: BorderStyle.solid,
            width: 1.5,
            color: selectedChorusColor.value == index ? PColor.success : color,
          ),
        ),
      ) ,
    );
  } 

  Widget stanzaColorRadioButton({required int index, required Color color,}){
    return InkWell(
      onTap: () {
        selectedStanzaColor.value = index;
        stanzaColor.value = color;
        _saveStanzaColor(color: color);
        _sharedPref.setInt('stanzaColorIndex', selectedStanzaColor.value);
      },
      child: Container(
        width: PHelperFunctions.screenWidth()*0.2,
        height: PHelperFunctions.screenHeight()*0.05,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            style: BorderStyle.solid,
            width: 1.5,
            color: selectedStanzaColor.value == index ? PColor.success : color,
          ),
        ),
      ) ,
    );
  }

  Widget defaultStanzaColorRadioButton({required int index}){
    return InkWell(
      onTap: () {
        selectedStanzaColor.value = index;
        stanzaColor.value = Get.isDarkMode ? PColor.light : PColor.dark;
        _saveStanzaColor(color: stanzaColor.value);
        _sharedPref.setInt('stanzaColorIndex', selectedStanzaColor.value);
      },
      child: Container(
        width: PHelperFunctions.screenWidth()*0.2,
        height: PHelperFunctions.screenHeight()*0.05,
        decoration: BoxDecoration(
          color: Get.isDarkMode ? PColor.light : PColor.dark,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            style: BorderStyle.solid,
            width: 1.5,
            color: selectedStanzaColor.value == index ? PColor.success : (Get.isDarkMode ? PColor.light : PColor.dark)
          ),
        ),
        child: Center(child: Text('Default', style: TextStyle(color: Get.isDarkMode ? PColor.dark : PColor.light, fontSize: 15,fontWeight: FontWeight.w600),)),
      ),
    );
  }

  Widget defaultChorusColorRadioButton({required int index}){
    return InkWell(
      onTap: () {
        selectedChorusColor.value = index;
        chorusColor.value = Get.isDarkMode ? PColor.light : PColor.dark;
        _saveChorusColor(color: chorusColor.value);
        _sharedPref.setInt('chorusColorIndex', selectedChorusColor.value);
      },
      child: Container(
        width: PHelperFunctions.screenWidth()*0.2,
        height: PHelperFunctions.screenHeight()*0.05,
        decoration: BoxDecoration(
          color: Get.isDarkMode ? PColor.light : PColor.dark,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            style: BorderStyle.solid,
            width: 1.5,
            color: selectedChorusColor.value == index ? PColor.success : (Get.isDarkMode ? PColor.light : PColor.dark)
          ),
        ),
        child: Center(child: Text('Default', style: TextStyle(color: Get.isDarkMode ? PColor.dark : PColor.light, fontSize: 15,fontWeight: FontWeight.w600),)),
      ) ,
    );
  }
}