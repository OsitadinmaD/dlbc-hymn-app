import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/profile/profile_info.dart';
import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/social_handles/social_accounts.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

import '../../side_menu_items.dart/about/about_screen.dart';
import '../../side_menu_items.dart/feedback/feedback_screen.dart';
import '../../side_menu_items.dart/rate/rate_screen.dart';

class SideMenuModel {
  final Icon icon;
  final String title;
  final Function()? onTap;
  

  const SideMenuModel({required this.icon, required this.title, required this.onTap});
  
  static const String appLink = 'https://play.google.com/store/apps/details?id=com.pixslide.dlcm_ghs';

  static List<SideMenuModel> sideMenuItems = [
    SideMenuModel(icon: const Icon(Icons.person_2_rounded, size: 25,color: PColor.light,), title: 'Profile', onTap: () => Get.to(() => const ProfileInfoScreen())),
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