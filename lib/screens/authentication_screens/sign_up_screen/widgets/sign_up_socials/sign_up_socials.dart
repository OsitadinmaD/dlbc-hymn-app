import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../login_screen/widgets/social_accounts/social_accounts.dart';

class SignUpSocials extends StatelessWidget {
  const SignUpSocials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialAccounts(imageString: PTexts.facebookImageString, onTap: (){},),
        const SizedBox(width: Psizes.fontSizeMd,),
        SocialAccounts(imageString: PTexts.googleImageString, onTap: (){},)
      ],
    );
  }
}