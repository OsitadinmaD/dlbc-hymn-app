import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FontSizeController extends GetxService{
  static FontSizeController get instance => Get.find<FontSizeController>();

  Rx<double> fontSize = 16.0.obs;

  late SharedPreferencesWithCache _sharedPref;

  void initializeSharedPref() async {
    _sharedPref = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(allowList: <String>{'fontSize'})
    );
    _readFontSizeFromSharedPref();
  }

  @override
  void onInit() {
    initializeSharedPref();
    super.onInit();
  }

  void _saveToSharedPrefs(double size) async{
    await _sharedPref.setDouble('fontSize',size);
  }

  void _readFontSizeFromSharedPref(){
    fontSize.value = _sharedPref.getDouble('fontSize') ?? 16.0;
  }

  void setFontSize(double size){
    fontSize.value = size;
    _saveToSharedPrefs(fontSize.value);
  }
}