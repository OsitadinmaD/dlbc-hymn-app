import 'package:dlcm_ghs/screens/authentication_screens/onboarding_screens/controller/on_boarding_controller.dart';
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotNavigator extends StatelessWidget {
  const DotNavigator({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = OnBoardController.instance;
    return Positioned(
      bottom: PHelperFunctions.bottomNavigationBarHeight() * 0.8,
      left: Psizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pagecontroller,
        count: 3,
        onDotClicked: (index) => controller.onDotClicked(index),
        effect: const ExpandingDotsEffect(),
      ),
    );
  }
}