import 'dart:io';

import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImagePickerController extends GetxService {
  static ImagePickerController get instance => Get.find();

  Rx<double> selectedImageSize = 0.0.obs;
  Rx<String> selectedImagePath = ''.obs;
  Rx<String> displayedImagePath = ''.obs;

  late SharedPreferencesWithCache _sharedPref;

  Future<void> initializeSharedPref() async {
    _sharedPref = await SharedPreferencesWithCache.create(
      cacheOptions: SharedPreferencesWithCacheOptions(allowList: <String>{'imagePath'}),
    );
    readImagePath();
  }

  @override
  void onInit() {
    super.onInit();
    initializeSharedPref();
  }

  void saveImagePath() async {
    await _sharedPref.setString('imagePath', displayedImagePath.value);
  }

  void readImagePath() {
    displayedImagePath.value = _sharedPref.getString('imagePath') ?? '';
  }
  
  void selectImage({required ImageSource imageSource}) async {
    final pickedImage = await ImagePicker().pickImage(source: imageSource);
    if(pickedImage != null){
      selectedImagePath.value = pickedImage.path;
      selectedImageSize.value = ((File(selectedImagePath.value).lengthSync()/1024/1024));
      if(selectedImageSize.value > 2){
        Get.snackbar('Failed', 'Image size (${selectedImageSize.value.toStringAsFixed(2)} MB) is greater than 2MB',
        animationDuration: Duration(milliseconds: 500),
        onTap: (snack) => Get.back(),
        backgroundColor: PColor.error,
        colorText: PColor.light,
        duration: Duration(milliseconds: 2500),
        isDismissible: true,
        snackPosition: SnackPosition.BOTTOM
      );
      }else{
        displayedImagePath.value = selectedImagePath.value;
      }
    }else{
      Get.snackbar('Failed', 'No image selected',
        animationDuration: Duration(milliseconds: 500),
        onTap: (snack) => Get.back(),
        backgroundColor: PColor.error,
        colorText: PColor.light,
        duration: Duration(milliseconds: 2500),
        isDismissible: true,
        snackPosition: SnackPosition.BOTTOM
      );
    }
  }
}