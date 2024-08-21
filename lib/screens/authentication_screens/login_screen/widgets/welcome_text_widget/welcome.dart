import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../../utils/constants/sizes.dart';

class LoginWelcomeText extends StatelessWidget {
  const LoginWelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final Color color = isDark ? PColor.light : PColor.dark;
    
    return Positioned(
      right: 0,
      top: PHelperFunctions.toolBarHeight() * 0.2,
      child:  Text('Welcome\nBack!', style: TextStyle(color: color ,fontSize: Psizes.md))
    );
  }
}