import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ProfileController extends GetxService{
  Rx<String> name = ''.obs;
  Rx<String> email = ''.obs;
  Rx<String> state = ''.obs;
  Rx<String> region = ''.obs;


  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController stateController;
  late TextEditingController regionController;

  late SharedPreferencesWithCache _sharedPref;

  void _initializeSharedPref() async {
    _sharedPref = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
        allowList: <String>{'saveName','saveEmail','saveState','saveRegion'}
      )
    );
    readName();
    readEmail();
    readState();
    readRegion();
  }

  @override
  onInit(){
    _initializeSharedPref();
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    stateController = TextEditingController();
    regionController = TextEditingController();
  }

  void readName(){
    name.value = _sharedPref.getString('saveName') ?? 'Name';
  }
  void readEmail(){
    email.value = _sharedPref.getString('saveEmail') ?? 'Email';
  }
  void readState(){
    state.value = _sharedPref.getString('saveState') ?? 'State';
  }
  void readRegion(){
    region.value = _sharedPref.getString('saveRegion') ?? 'Region';
  }
  

  void setName(String nameText){
    name.value = nameText;
    _sharedPref.setString('saveName', name.value);
  }
  void setEmail(String emailText){
    email.value = emailText;
    _sharedPref.setString('saveEmail', email.value);
  }
  void setState(String stateText){
    state.value = stateText;
    _sharedPref.setString('saveState', state.value);
  }
  void setRegion(String regionText){
    region.value = regionText;
    _sharedPref.setString('saveRegion', region.value);
  }
}