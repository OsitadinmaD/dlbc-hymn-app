import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../../utils/constants/sizes.dart';

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({
    super.key,
    required this.imageString,
    required this.onTap
  });

  final String imageString;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    Color color = isDark ? PColor.darkGrey : PColor.grey; 
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: PHelperFunctions.screenWidth() * 0.3,
        height: PHelperFunctions.bottomNavigationBarHeight() * 0.8,
        decoration: BoxDecoration(
          color: PColor.transparentColor,
          borderRadius: BorderRadius.circular(Psizes.borderRadiusXLg),
          border: Border.all(color: color,width: 1,),
          image: DecorationImage(image: AssetImage(imageString,),fit: BoxFit.fitWidth)
        ),
      ),
    );
  }
}