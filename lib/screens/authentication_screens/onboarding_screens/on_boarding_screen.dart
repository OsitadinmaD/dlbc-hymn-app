import 'package:dlcm_ghs/screens/authentication_screens/onboarding_screens/controller/on_boarding_controller.dart';
import 'package:dlcm_ghs/screens/authentication_screens/onboarding_screens/widgets/dot_navigator.dart';
import 'package:dlcm_ghs/screens/authentication_screens/onboarding_screens/widgets/elevation_button_widget.dart';
import 'package:dlcm_ghs/screens/authentication_screens/onboarding_screens/widgets/on_boarding_page_view.dart';
import 'package:dlcm_ghs/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/text_button_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});



  @override
  Widget build(BuildContext context) {
      final controller = Get.put(OnBoardController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pagecontroller,
            onPageChanged: (index) => controller.currentPage,
            physics:const BouncingScrollPhysics(),
            children: const [
             OnBoardingPageView(
              title: PTexts.onBoardingTittle1,
              subTitle: PTexts.onBoardingSubTittle1,
              image: PTexts.onBoardingImageString1,
             ),
             OnBoardingPageView(
              title: PTexts.onBoardingTittle2,
              subTitle: PTexts.onBoardingSubTittle2,
              image: PTexts.onBoardingImageString2,
             ),
             OnBoardingPageView(
              title: PTexts.onBoardingTittle3,
              subTitle: PTexts.onBoardingSubTittle3,
              image: PTexts.onBoardingImageString3,
             )
            ],
          ),
          const TextButtonWidget(),
          const ElevatedButtonWidget(),
          const DotNavigator()
        ],
      ),
    );
  }
}







