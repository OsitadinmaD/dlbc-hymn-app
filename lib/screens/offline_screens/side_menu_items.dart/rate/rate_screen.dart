import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/rate/controller/rate_dialog_controller.dart';
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:dlcm_ghs/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../hymn_home.dart/controller/hymn_home_controller.dart';


class RateScreen extends StatelessWidget {
  const RateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ratingDialogController = Get.put(RateDialogController());
    final sideMenuController = Get.put(HymnHomeController());
    
        
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RATE OUR APP',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
              sideMenuController.openAndCloseSideMenu();
            },
            icon: const Icon(
              Icons.close_rounded,
              size: 25,
            )),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: Psizes.defaultPaddingOnly2(),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(PTexts.onBoardingImageString1,
                      fit: BoxFit.cover,height: PHelperFunctions.screenHeight() * 0.6,),
                ),
                const SizedBox(
                  height: Psizes.md,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(() => Text(
                          'Your Rating : ${ratingDialogController.valueRated}',
                          softWrap: true,
                          style: Theme.of(context).textTheme.headlineMedium,
                        )),
                    const SizedBox(
                      height: Psizes.sm,
                    ),
                    Obx(() => Text(
                          'Your Comment : ${ratingDialogController.comment.toString().capitalizeFirst}',
                          softWrap: true,
                          style: Theme.of(context).textTheme.headlineMedium,
                        )),
                    const SizedBox(
                      height: Psizes.lg,
                    ),
                    OutlinedButton(
                        onPressed: () => ratingDialogController.showDialog(),
                        child: Text(
                          'Rate',
                          style: Theme.of(context).textTheme.labelLarge,
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
