import 'dart:io';

import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImagePickerController extends GetxService {
  static ImagePickerController get instance => Get.find();

  Rx<double> selectedImageSize = 0.0.obs;
  Rx<String> selectedImagePath = ''.obs;
  Rx<String> displayedImagePath = ''.obs;
  Rx<bool> error = false.obs;
  // crop image
  Rx<String> croppedImagePath = ''.obs;

  //compress image
  Rx<String> compressedImagePath = ''.obs;

  // compressed image root file
  Rx<String> root = "/profile_picture.jpg".obs;

  late SharedPreferencesWithCache _sharedPref;

  Future<void> initializeSharedPref() async {
    _sharedPref = await SharedPreferencesWithCache.create(
      cacheOptions: SharedPreferencesWithCacheOptions(allowList: <String>{'imagePath'}),
    );
    readImagePath();
  }

  @override
  void onInit() {
    initializeSharedPref();
    super.onInit();
  }

  void saveImagePath() async {
    await _sharedPref.setString('imagePath', croppedImagePath.value);
  }

  void readImagePath() {
    croppedImagePath.value = _sharedPref.getString('imagePath') ?? '';
  }
  
  void selectImage({required ImageSource imageSource}) async {
    final pickedImage = await ImagePicker().pickImage(source: imageSource);
    if(pickedImage != null){
      selectedImagePath.value = pickedImage.path;
      selectedImageSize.value = ((File(selectedImagePath.value).lengthSync()/1024/1024));
      if(selectedImageSize.value > 2){
        error.value = true;
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
        error.value = false;
        displayedImagePath.value = selectedImagePath.value;
        debugPrint(File(displayedImagePath.value).lengthSync().toStringAsFixed(2));
        //Crop image
      try{
        final CroppedFile? cropImageFile = await ImageCropper().cropImage(
          sourcePath: displayedImagePath.value,
          //maxHeight: 512,
          //maxWidth: 512,
          compressQuality: 90,
          compressFormat: ImageCompressFormat.jpg,
          //aspectRatio: CropAspectRatio(ratioX: 90, ratioY: 100)
        );

        if(cropImageFile != null){
          error.value = false;
          croppedImagePath.value = cropImageFile.path;
          saveImagePath();
          debugPrint(File(croppedImagePath.value).lengthSync().toStringAsFixed(2));
        }else{
          error.value = true;
          Get.snackbar('Failed', 'An error occured while cropping image',
            animationDuration: Duration(milliseconds: 500),
            onTap: (snack) => Get.back(),
            backgroundColor: PColor.error,
            colorText: PColor.light,
            duration: Duration(milliseconds: 2500),
            isDismissible: true,
            snackPosition: SnackPosition.BOTTOM
          );
        }

        }catch(e){
           Get.snackbar('Failed', 'An error occured while cropping image',
            animationDuration: Duration(milliseconds: 500),
            onTap: (snack) => Get.back(),
            backgroundColor: PColor.error,
            colorText: PColor.light,
            duration: Duration(milliseconds: 2500),
            isDismissible: true,
            snackPosition: SnackPosition.BOTTOM
          );
        }

        //Compress image
        try{
          if(error.value != true){
            final directory =  Directory.systemTemp;
          root.value = "/profile_picture.jpg";
        final targetPath = directory.absolute.path + root.value ;
        XFile? compressedImageFile = await FlutterImageCompress.compressAndGetFile(
          croppedImagePath.value, 
          targetPath,
          quality: 90
        );

        if(compressedImageFile != null) {
          compressedImagePath.value = compressedImageFile.path;
          Get.snackbar('Success', 'Image Uploaded Successfully',
            animationDuration: Duration(milliseconds: 500),
            onTap: (snack) => Get.back(),
            backgroundColor: PColor.success,
            colorText: PColor.light,
            duration: Duration(milliseconds: 2500),
            isDismissible: true,
            snackPosition: SnackPosition.BOTTOM
          );
          debugPrint(File(compressedImagePath.value).lengthSync().toStringAsFixed(2));
        }else{
          Get.snackbar('Failed', 'An error occured while compressing image',
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

        }catch (e){
          Get.snackbar('Failed', 'An error occured while compressing image',
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