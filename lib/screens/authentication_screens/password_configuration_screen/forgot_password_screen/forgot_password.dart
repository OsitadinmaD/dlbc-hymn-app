import 'package:dlcm_ghs/screens/authentication_screens/login_screen/widgets/form_widget/login_elevated_button.dart';
import 'package:dlcm_ghs/screens/authentication_screens/password_configuration_screen/password_reset_mail_screen/pass_reset_mail.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:dlcm_ghs/utils/constants/text_strings.dart';
import 'package:dlcm_ghs/utils/constants/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = PHelperFunctions.isDarkMode(context);
    final Color color = isDark ? PColor.light : PColor.dark;
    final GlobalKey<FormState> forgotPasswordFormState =GlobalKey<FormState>();
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: Psizes.defaultPaddingOnly(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: PHelperFunctions.screenWidth() * 0.72,),
                    IconButton(
                      icon: const Icon(Icons.close),
                      color: color,
                      onPressed: () => Get.back(),
                      ),
                  ],
                ),
                Image(
                  image: const AssetImage(PTexts.forgotPasswordImageString),
                  height: PHelperFunctions.screenHeight() * 0.45,
                  width: PHelperFunctions.screenWidth() * 0.8,
                ),
                Text('Forgot Password', style: Theme.of(context).textTheme.headlineMedium,),
                const SizedBox(height: Psizes.md),
                Text(PTexts.forgotPasswordText, style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,softWrap: true,),
                const SizedBox(height: Psizes.md),
                Form(
                  key: forgotPasswordFormState,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email_rounded,),
                        ),
                        validator: (email) => PValidators.emailValidation(email),
                      ),
                      const SizedBox(height: Psizes.spaceBtwSections),
                      LoginElevatedButton(onPressed: () => Get.off(() => const PasswordResetMailScreen(),),title: 'Submit',)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      )
    );
  }
}