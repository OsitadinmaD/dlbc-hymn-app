import 'package:dlcm_ghs/screens/authentication_screens/onboarding_screens/controller/on_boarding_controller.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardController.instance;
    
    Color color = Theme.of(context).brightness == Brightness.dark ? PColor.light : PColor.dark;
    
    return Positioned(
      top: PHelperFunctions.toolBarHeight(),
      right: Psizes.defaultSpace,
      child: TextButton(
        child: Text('Skip', style: TextStyle(color: color, fontSize: Psizes.fontSizeMd, fontWeight: FontWeight.w500),),
        onPressed: () => controller.skipBottonPressed(),
      )
    );
  }
}