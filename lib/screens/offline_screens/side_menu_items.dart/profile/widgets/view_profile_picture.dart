import 'dart:io';

import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/profile/widgets/photo_source.dart';
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/text_strings.dart';
import '../../../hymn_home.dart/controller/hymn_home_controller.dart';
import '../controller/image_picker_controller.dart';

class ViewProfilePicture extends StatelessWidget {
  const ViewProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    final imageController = Get.put<ImagePickerController>(ImagePickerController());
    final sideMenuController = Get.put<HymnHomeController>(HymnHomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('PROFILE', style: Theme.of(context).textTheme.headlineMedium,),
        leading: IconButton(onPressed: (){
          Get.back();
          sideMenuController.openAndCloseSideMenu();
        }, icon: const Icon(Icons.close_rounded,size: 25,), tooltip: 'Back',),
        actions: [
          IconButton(onPressed: () => PhotoSource.photoSource(context) , icon: const Icon(Icons.camera_alt_outlined,size: 30,),tooltip: 'Edit Picture',)
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: PHelperFunctions.screenWidth() * 0.85,
            height: PHelperFunctions.screenHeight() * 0.6,
            child: Hero(
              tag: 'profilePicture',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Obx( () => imageController.croppedImagePath.value == '' ? 
                                Image.asset(PTexts.guitarCoolImageString,fit: BoxFit.cover,height: 150,) : 
                                   Image.file(File(imageController.croppedImagePath.value),fit: BoxFit.cover,width: 150,height: 150,),
                    )
                  ),
                ), 
          ),
        )
      ),
    );
  }
}