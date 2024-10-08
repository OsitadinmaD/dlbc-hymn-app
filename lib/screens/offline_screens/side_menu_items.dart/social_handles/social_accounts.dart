
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../hymn_home.dart/controller/hymn_home_controller.dart';
import 'widget/social_accounts_tab.dart';

class SocialAccountScreen extends StatelessWidget{
  const SocialAccountScreen({super.key});

  @override
  Widget build(BuildContext context){
    final sideMenuController = Get.put(HymnHomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('CONNECT WITH US', style: Theme.of(context).textTheme.headlineMedium,),
        leading: IconButton(onPressed: (){
          Get.back();
          sideMenuController.openAndCloseSideMenu();
        }, icon: const Icon(Icons.close_rounded,size: 25,), tooltip: 'Back',),
        actions: const [],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: Psizes.defaultPaddingOnly2(),
            child: Column(
              children: [
                ClipRRect(
                  child: Image.asset('assets/images/socials/connect_with_us.png', 
                  fit: BoxFit.cover,
                  height: PHelperFunctions.screenHeight() * 0.4 ,
                  width: PHelperFunctions.screenWidth()
                 ),
                ),
                const SizedBox(height: Psizes.md,),
                Text('CONNECT WITH US VIA OUR SOCIALS,\nKINDLY FOLLOW US TOO', textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleLarge,),
                const SizedBox(height: Psizes.md,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SocialAccountsTab(),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}



