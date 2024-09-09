import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/text_strings.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rating_dialog/rating_dialog.dart';

import '../../../hymn_home.dart/controller/hymn_home_controller.dart';

class RateDialogController extends GetxController{
  static RateDialogController get instance => Get.find<RateDialogController>();
  final sideMenuController = Get.put(HymnHomeController());

  Rx<double> valueRated = 0.0.obs;
  Rx<String> comment = ''.obs;

  void showDialog(){
    Get.dialog(
      RatingDialog(
        title: Text('DCLM Hymn App Rating',style: TextStyle(fontSize: 20,color:Get.isDarkMode ? PColor.light : PColor.dark,fontWeight: FontWeight.w600)),
        submitButtonText: 'Submit',
        onSubmitted: (RatingDialogResponse response) {
          valueRated.value = response.rating;
          comment.value = response.comment;
        },
        commentHint: 'Please we need your comments',
        enableComment: true,
        image: Image.asset(PTexts.hymnLogoImageString,fit: BoxFit.cover,),
        message: Text('Tap the star icon below to rate our app',style: TextStyle(fontSize: 20,color:Get.isDarkMode ? PColor.light : PColor.dark,fontWeight: FontWeight.w500)),
        onCancelled: () {
          Get.back();
          sideMenuController.openAndCloseSideMenu();
        },
        showCloseButton: true,
        starColor: const Color.fromARGB(223, 19, 53, 108),
        starSize: 35,
      )
    );
  }
}