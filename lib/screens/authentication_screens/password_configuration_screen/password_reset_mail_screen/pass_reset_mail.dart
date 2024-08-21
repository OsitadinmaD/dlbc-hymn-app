import 'package:dlcm_ghs/screens/authentication_screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../login_screen/widgets/form_widget/login_elevated_button.dart';

class PasswordResetMailScreen extends StatelessWidget {
  const PasswordResetMailScreen({super.key});

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
                    IconButton(onPressed: () => Get.back() , icon: Icon(Icons.close_rounded, color: color,))
                  ],
                ),
                Image(
                  image: const AssetImage(PTexts.emailVerificationImageString),
                  height: PHelperFunctions.screenHeight() * 0.45,
                  width: PHelperFunctions.screenWidth() * 0.9,
                ),
                Text('Password Reset Email Sent', style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: Psizes.md,),
                Text('display@theemailadresshere.com', style: Theme.of(context).textTheme.bodySmall,),
                const SizedBox(height: Psizes.md,),
                Text(
                  PTexts.passwordResetText, 
                  style: Theme.of(context).textTheme.bodySmall,
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Psizes.xl,),
                LoginElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()), 
                  title: 'Done'
                ),
                const SizedBox(height: Psizes.md,),
                TextButton(
                  onPressed: (){
                    PHelperFunctions.showAlert('Email reset', 'Mail sent');
                  }, 
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
