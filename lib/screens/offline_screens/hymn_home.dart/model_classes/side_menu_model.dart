import 'dart:io';

import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/profile/profile_info.dart';
import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/social_handles/social_accounts.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../side_menu_items.dart/about/about_screen.dart';
import '../../side_menu_items.dart/feedback/feedback_screen.dart';
import '../../side_menu_items.dart/profile/controller/image_picker_controller.dart';
import '../../side_menu_items.dart/rate/rate_screen.dart';

class SideMenuModel {
  final Widget icon;
  final String title;
  final Function()? onTap;
  

  const SideMenuModel({required this.icon, required this.title, required this.onTap});
  
  static const String appLink = 'https://play.google.com/store/apps/details?id=com.pixslide.dlcm_ghs';
  static final imageController = Get.put<ImagePickerController>(ImagePickerController());

  static List<SideMenuModel> sideMenuItems = [
    SideMenuModel(
      icon: Container(
          height: PHelperFunctions.screenHeight() * 0.08,
          width: PHelperFunctions.screenWidth() * 0.16,
          decoration: BoxDecoration(
            color: Get.isDarkMode ? PColor.darkGrey : PColor.grey,
            borderRadius: BorderRadius.circular(60),
          ),
          child: Center(
            child: CircleAvatar(
              maxRadius: 50,
              minRadius: 30,
              backgroundColor: PColor.light,
              //radius: 40,
              child: GestureDetector(
                onTap: () => Get.to(() => ProfileInfoScreen()),
                child: Hero(
                  tag: 'profilePicture',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Obx( () => imageController.displayedImagePath.value == '' ? 
                                Image.asset(PTexts.guitarCoolImageString,fit: BoxFit.cover,height: 150,) : 
                                   Image.file(File(imageController.displayedImagePath.value),fit: BoxFit.cover,width: 150,height: 150,),
                    )
                  ),
                ),
              )
            ),
          )
        ),
      title: 'Profile', 
      onTap: () => Get.to(() => const ProfileInfoScreen())),
    SideMenuModel(icon: const Icon(Icons.share_rounded, size: 25,color: PColor.light,), title: 'Share', 
    onTap: () async => Share.share(appLink),),
    SideMenuModel(icon: const Icon(Icons.rate_review_rounded, size: 25,color: PColor.light,), title: 'Rate', onTap: () => Get.to(() => const RateScreen())),
    SideMenuModel(icon: const Icon(Icons.notifications_active_rounded, size: 25,color: PColor.light,), title: 'Notifications', onTap: (){}),
    SideMenuModel(icon: const Icon(Icons.feedback_rounded, size: 25,color: PColor.light,), title: 'Feedback', onTap: () => Get.to(() => const FeedbackScreen())),
    SideMenuModel(icon: const Icon(Icons.badge_rounded, size: 25,color: PColor.light,), title: 'Follow us on our Social Media handles', onTap: () => Get.to(() => const SocialAccountScreen())),
    SideMenuModel(icon: const Icon(Icons.question_answer_rounded, size: 25,color: PColor.light,), title: 'Help', onTap: (){}),
    SideMenuModel(icon: const Icon(Icons.info_outline_rounded, size: 25,color: PColor.light,), title: 'About', onTap: ()  => Get.to(() => const AboutScreen())),
  ];
}