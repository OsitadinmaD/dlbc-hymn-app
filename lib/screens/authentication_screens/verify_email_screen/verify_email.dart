import 'package:dlcm_ghs/screens/authentication_screens/login_screen/login_screen.dart';
import 'package:dlcm_ghs/screens/authentication_screens/login_screen/widgets/form_widget/login_elevated_button.dart';
import 'package:dlcm_ghs/screens/authentication_screens/success_screen/successful.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:dlcm_ghs/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    Color color = isDark ? PColor.light : PColor.dark;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Psizes.defaultPaddingOnly(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: PHelperFunctions.screenWidth() * 0.725,),
                    IconButton(onPressed: () => Get.offAll(() => const LoginScreen()) , icon: Icon(Icons.close_rounded, color: color,))
                  ],
                ),
                Image(
                  image: const AssetImage(PTexts.emailVerificationImageString),
                  height: PHelperFunctions.screenHeight() * 0.45,
                  width: PHelperFunctions.screenWidth() * 0.9,
                ),
                Text('Verify Your Email Address', style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: Psizes.md,),
                Text('display@theemailadresshere.com', style: Theme.of(context).textTheme.bodySmall,),
                const SizedBox(height: Psizes.md,),
                Text(
                  PTexts.emailVerificationText, 
                  style: Theme.of(context).textTheme.bodySmall,
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Psizes.xl,),
                LoginElevatedButton(
                  onPressed: () => Get.to(() => const AccountSuccessfulScreen()), 
                  title: 'Continue'
                ),
                const SizedBox(height: Psizes.md,),
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Resend Email', style: TextStyle(color: PColor.primaryColor,fontSize: 16),)
                )
              ],
            ),
          ),
        )
      )
    );
  }
}