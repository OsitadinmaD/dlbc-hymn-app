import 'dart:io';

import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/profile/controller/image_picker_controller.dart';
import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/profile/widgets/photo_source.dart';
import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/profile/widgets/view_profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../../utils/constants/text_strings.dart';

class ImageStackWidget extends StatelessWidget {
  const ImageStackWidget({
    super.key,                                                                                                                       
  });

  @override
  Widget build(BuildContext context) {
    final imageController = Get.put<ImagePickerController>(ImagePickerController());
    return Stack(
      children: [
        Container(
          height: PHelperFunctions.screenHeight() * 0.3,
          width: PHelperFunctions.screenWidth(),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: CircleAvatar(
              maxRadius: 70,
              minRadius: 40,
              backgroundImage: AssetImage(PTexts.hymnLogoImageString),
              //radius: 40,
              child: GestureDetector(
                onTap: () => Get.to(() => ViewProfilePicture()),
                child: Hero(
                  tag: 'profilePicture',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Obx( () => (imageController.croppedImagePath.value == '') ? 
                                Image.asset(PTexts.guitarCoolImageString,fit: BoxFit.cover,height: 150,) : 
                                   Image.file(File(imageController.croppedImagePath.value),fit: BoxFit.cover,width: 150,height: 150,),
                    )
                  ),
                ),
              )
            ),
          )
        ),
        Positioned(
          bottom: 45,
          right: 100,
          child: InkWell(
            onTap: () => PhotoSource.photoSource(context),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                border: Border.all(color: Get.isDarkMode ? PColor.light : PColor.dark,width: 1),
                borderRadius: BorderRadius.circular(60),
                color: PColor.primaryColor
              ),
              child: Center(child: Icon(Icons.camera_alt_outlined,size: 20,color: PColor.light,))),
          ),
        )
      ],
    );
  }
}