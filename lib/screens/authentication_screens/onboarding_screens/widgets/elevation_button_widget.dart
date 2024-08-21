import 'package:dlcm_ghs/screens/authentication_screens/onboarding_screens/controller/on_boarding_controller.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../utils/constants/sizes.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardController.instance;


    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final Color color = isDark ? PColor.darkGrey : PColor.grey;
    return Positioned(
      bottom: PHelperFunctions.bottomNavigationBarHeight() * 0.5,
      right: Psizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => controller.nextPage(), 
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: color),
        child: const Icon(Icons.arrow_forward_ios_rounded, size: Psizes.iconXl, color: Colors.white,),
      )
    );
  }
}