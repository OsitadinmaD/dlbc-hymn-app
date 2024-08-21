import 'package:dlcm_ghs/common_widget/title_navigation_widget/title_navigation.dart';
import 'package:dlcm_ghs/screens/authentication_screens/login_screen/widgets/divider_widget/divider_widget.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/sign_up_form_layout/sign_up_form.dart';
import 'widgets/sign_up_socials/sign_up_socials.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: Psizes.defaultPaddingOnly(),
            child: Column(
              children: [
                PTitlePopNavigationWidget(title: 'Sign Up', onPressed: () => Get.back()),
                const SizedBox(height: Psizes.spaceBtwItems,),
                Text("Let's create Your account", style: Theme.of(context).textTheme.headlineMedium,),
                const SizedBox(height: Psizes.spaceBtwSections,),
                SignUpFormsLayout(signUpFormKey: signUpFormKey),
                const SizedBox(height: Psizes.sm,),
                const DividerWidget(title: 'or Signup via',),
                const SizedBox(height: Psizes.md,),
                const SignUpSocials()
              ],
            ),
          ),
        )
      )
    );
  }
}