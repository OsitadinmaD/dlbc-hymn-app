import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/validators/validators.dart';
import '../form_widget/login_elevated_button.dart';
import '../form_widget/rem_me_and_forgot_pass.dart';
import '../form_widget/text_form_field.dart';

class LoginFormLayout extends StatelessWidget {
  const LoginFormLayout({
    super.key,
    required this.loginFormKey,
  });

  final GlobalKey<FormState> loginFormKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child:  Column(
        children: [
          TextFormFieldWidget(
            type: 'E-Mail', 
            keyboardType: TextInputType.emailAddress,
            prefixIcon: const Icon(Icons.email_rounded),
            validator: (email) => PValidators.emailValidation(email) ,
          ),
          const SizedBox(height: Psizes.spaceBetweenInputFields,),
          TextFormFieldWidget(
            type: 'Password', 
            keyboardType: TextInputType.text, 
            prefixIcon: const Icon(Icons.password),
            validator: (password) => PValidators.passWordValidation(password),
          ),
          const SizedBox(height: 2,),
          const RememberMeAndForgotPassword(),
          const SizedBox(height: Psizes.md),
          LoginElevatedButton(title: 'Sign in',onPressed: (){},),
        ],
      ),
    );
  }
}