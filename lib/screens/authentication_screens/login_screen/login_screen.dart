import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:dlcm_ghs/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'widgets/divider_widget/divider_widget.dart';
import 'widgets/form_widget/sign_up_button.dart';
import 'widgets/login_form_layout/login_form.dart';
import 'widgets/social_accounts/social_accounts.dart';
import 'widgets/welcome_text_widget/welcome.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: Psizes.defaultPaddingOnly(),
            child: Column(
              children: [
                Text('Login', style: Theme.of(context).textTheme.displaySmall,),
                Stack(
                  children: [
                    Image(
                     image: const AssetImage(PTexts.signInImageString1),
                     height: PHelperFunctions.screenHeight() * 0.4,
                     width: PHelperFunctions.screenWidth() * 0.8,
                    ),
                    const LoginWelcomeText(),
                  ]
                ),
                const SizedBox(height: Psizes.sm),
                LoginFormLayout(loginFormKey: loginFormKey),
                const SignUpWidget(),
                const DividerWidget(title: ' Or log in via',),
                const SizedBox(height: Psizes.spaceBtwItems,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialAccounts(imageString: PTexts.facebookImageString, onTap: (){},),
                    const SizedBox(width: Psizes.xl,),
                    SocialAccounts(imageString: PTexts.googleImageString, onTap: (){},),
                 ],
               )
              ],
            ),
          ),
        )
      ),
    );
  }
}