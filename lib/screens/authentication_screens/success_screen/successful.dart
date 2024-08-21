import 'package:dlcm_ghs/screens/authentication_screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/helpers/helper_fncs.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../login_screen/widgets/form_widget/login_elevated_button.dart';

class AccountSuccessfulScreen extends StatelessWidget {
  const AccountSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Psizes.defaultPaddingOnly(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: const AssetImage(PTexts.accountSuccessfulImageString),
                  height: PHelperFunctions.screenHeight() * 0.55,
                  width: PHelperFunctions.screenWidth() * 0.9,
                ),
                Text('Your account successfully created!', style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                const SizedBox(height: Psizes.md,),
                Text(
                  PTexts.accountSuccessfulText, 
                  style: Theme.of(context).textTheme.bodySmall,
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Psizes.xl,),
                LoginElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()), 
                  title: 'Continue'
                ),
                const SizedBox(height: Psizes.md,),
              ],
            ),
          ),
        )
      )
    );
  }
}