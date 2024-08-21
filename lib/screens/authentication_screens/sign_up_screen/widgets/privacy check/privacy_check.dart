import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class PPrivacyCheck extends StatelessWidget {
  const PPrivacyCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final Color color = isDark ? PColor.light : PColor.dark;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(value: true, onChanged: (value){},),
        Text('I agree to', style: Theme.of(context).textTheme.labelSmall,),
        GestureDetector(
          onTap: (){},
          child: Text(
            ' Privacy policy ',
            style: TextStyle(
              color: color,
              decoration: TextDecoration.underline,
              fontSize: Psizes.fontSizeSm,
              fontWeight: FontWeight.w500
            ),
          ) 
        ),
        Text('and', style: Theme.of(context).textTheme.labelSmall),
        GestureDetector(
          onTap: (){},
          child: Text(
            ' Terms of use ',
            style: TextStyle(
              color: color,
              decoration: TextDecoration.underline,
              fontSize: Psizes.fontSizeSm,
              fontWeight: FontWeight.w500
            ),
          ) 
        ),
      ],
    );
  }
}