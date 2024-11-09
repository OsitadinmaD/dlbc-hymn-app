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
import '../../side_menu_items.dart/profile/controller/profile_controller.dart';
import '../../side_menu_items.dart/rate/rate_screen.dart';

class SideMenuModel {
  final Widget icon;
  final Widget title;
  final Function()? onTap;
  

  const SideMenuModel({required this.icon, required this.title, required this.onTap});
  
  static const String appLink = 'https://play.google.com/store/apps/details?id=com.pixslide.dlcm_ghs';
  static final imageController = Get.put<ImagePickerController>(ImagePickerController());
  static final profileController = Get.put<ProfileController>(ProfileController());

  static String timelyGreeting(){
    var hour = DateTime.now().hour;
     if(hour < 12){
      return 'Good Morning,\n${profileController.name.value}';
     }
     if (hour > 12 || hour < 17){
      return 'Good Afternoon,\n${profileController.name.value}';
     }
     return 'Good Evening,\n${profileController.name.value}';
  }

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
              backgroundImage: AssetImage(PTexts.hymnLogoImageString),
              child: GestureDetector(
                onTap: () => Get.to(() => ProfileInfoScreen()),
                child: Hero(
                  tag: 'profilePicture',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Obx( () => imageController.croppedImagePath.value == '' ? 
                                Image.asset(PTexts.guitarCoolImageString,fit: BoxFit.cover,height: 150,) : 
                                   Image.file(File(imageController.croppedImagePath.value),fit: BoxFit.cover,width: 150,height: 150,),
                    )
                  ),
                ),
              )
            ),
          )
        ),
      title: Obx(() => Text(timelyGreeting(),style: TextStyle(fontSize: 15,color: PColor.light,fontFamily: 'poppins',fontWeight: FontWeight.w600,))), 
      onTap: () => Get.to(() => const ProfileInfoScreen())),
    SideMenuModel(
      icon: const Icon(Icons.share_rounded, size: 25,color: PColor.light,), 
      title: Text('Share',style: TextStyle(fontSize: 15,color: PColor.light,fontFamily: 'poppins',fontWeight: FontWeight.w500),),  
      onTap: () async => Share.share(appLink),),
    SideMenuModel(
      icon: const Icon(Icons.rate_review_rounded, size: 25,color: PColor.light,), 
      title: Text('Rate',style: TextStyle(fontSize: 15,color: PColor.light,fontFamily: 'poppins',fontWeight: FontWeight.w500),), 
      onTap: () => Get.to(() => const RateScreen())),
    SideMenuModel(
      icon: const Icon(Icons.notifications_active_rounded, size: 25,color: PColor.light,), 
      title: Text('Notifications',style: TextStyle(fontSize: 15,color: PColor.light,fontFamily: 'poppins',fontWeight: FontWeight.w500),), 
      onTap: (){}),
    SideMenuModel(
      icon: const Icon(Icons.feedback_rounded, size: 25,color: PColor.light,), 
      title: Text('Feedback',style: TextStyle(fontSize: 15,color: PColor.light,fontFamily: 'poppins',fontWeight: FontWeight.w500),), 
      onTap: () => Get.to(() => const FeedbackScreen())),
    SideMenuModel(
      icon: const Icon(Icons.badge_rounded, size: 25,color: PColor.light,), 
      title: Text('Follow us on our social media handles',style: TextStyle(fontSize: 15,color: PColor.light,fontFamily: 'poppins',fontWeight: FontWeight.w500),), 
      onTap: () => Get.to(() => const SocialAccountScreen())),
    SideMenuModel(
      icon: const Icon(Icons.question_answer_rounded, size: 25,color: PColor.light,), 
      title:Text('Help',style: TextStyle(fontSize: 15,color: PColor.light,fontFamily: 'poppins',fontWeight: FontWeight.w500),),  
      onTap: (){}),
    SideMenuModel(
      icon: const Icon(Icons.info_outline_rounded, size: 25,color: PColor.light,), 
      title: Text('About',style: TextStyle(fontSize: 15,color: PColor.light,fontFamily: 'poppins',fontWeight: FontWeight.w500),), 
      onTap: ()  => Get.to(() => const AboutScreen())),
  ];
}