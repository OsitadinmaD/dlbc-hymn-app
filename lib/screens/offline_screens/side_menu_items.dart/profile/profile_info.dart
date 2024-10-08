import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/profile/controller/profile_controller.dart';
import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/profile/subscreen/edit_profile.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../hymn_home.dart/controller/hymn_home_controller.dart';
import 'widgets/image_stack_widget.dart';
import 'widgets/profile_info_widget.dart';

class ProfileInfoScreen extends StatelessWidget {
  const ProfileInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sideMenuController = Get.put<HymnHomeController>(HymnHomeController());
    final profileController = Get.put<ProfileController>(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: Text('PROFILE', style: Theme.of(context).textTheme.headlineMedium,),
        leading: IconButton(onPressed: (){
          Get.back();
          sideMenuController.openAndCloseSideMenu();
        }, icon: const Icon(Icons.close_rounded,size: 25,), tooltip: 'Back',),
        actions: [
          IconButton(onPressed: () => Get.to(() => const EditProfile()), icon: const Icon(Icons.edit_note_rounded,size: 30,),tooltip: 'Edit profile',)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: Psizes.defaultPaddingOnly2(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ImageStackWidget(),
                const SizedBox(height: Psizes.md,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Get.isDarkMode ? PColor.darkGrey : PColor.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Obx(() => ProfileInfoWidget(title: 'Name',info: profileController.name.value,)),
                        const SizedBox(height: Psizes.spaceBetweenInputFields,),
                        Obx(() => ProfileInfoWidget(title: 'Email', info: profileController.email.value)),
                        const SizedBox(height: Psizes.spaceBetweenInputFields,),
                        Obx(() => ProfileInfoWidget(title: 'State', info: profileController.state.value)),
                        const SizedBox(height: Psizes.spaceBetweenInputFields,),
                        Obx(() => ProfileInfoWidget(title: 'Region', info: profileController.region.value)),
                        const SizedBox(height: Psizes.spaceBetweenInputFields,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}



