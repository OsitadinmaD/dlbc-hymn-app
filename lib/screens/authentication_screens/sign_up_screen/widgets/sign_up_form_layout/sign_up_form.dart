import 'package:dlcm_ghs/screens/authentication_screens/verify_email_screen/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/validators/validators.dart';
import '../../../login_screen/widgets/form_widget/login_elevated_button.dart';
import '../../../login_screen/widgets/form_widget/text_form_field.dart';
import '../privacy check/privacy_check.dart';

class SignUpFormsLayout extends StatelessWidget {
  const SignUpFormsLayout({
    super.key,
    required this.signUpFormKey,
  });

  final GlobalKey<FormState> signUpFormKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      key: signUpFormKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              labelText: 'First name',
              prefixIcon: Icon(Icons.face),
              hintText: 'Abcde'
            ),
            validator: (firstName) => PValidators.namesValidation(firstName),
          ),
          const SizedBox(height: Psizes.spaceBetweenInputFields,),
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              labelText: 'Surname',
              prefixIcon: Icon(Icons.face),
              hintText: 'Abcde'
            ), 
            validator: (surName) => PValidators.namesValidation(surName),
          ),
          const SizedBox(height: Psizes.spaceBetweenInputFields,),
          TextFormFieldWidget(
            type: 'User name', 
            keyboardType: TextInputType.name, 
            prefixIcon: const Icon(Icons.face), 
            validator: (userName) => PValidators.userNameValidation(userName)
          ),
          const SizedBox(height: Psizes.spaceBetweenInputFields,),
          TextFormFieldWidget(
            type: 'Phone Number', 
            keyboardType: TextInputType.number, 
            prefixIcon: const Icon(Icons.phone_rounded), 
            validator: (phoneNumber) => PValidators.phoneNumberValidation(phoneNumber)
          ),
          const SizedBox(height: Psizes.spaceBetweenInputFields,),
          TextFormFieldWidget(
            type: 'Email', 
            keyboardType: TextInputType.emailAddress, 
            prefixIcon: const Icon(Icons.email_rounded), 
            validator: (email) => PValidators.emailValidation(email)
          ),
          const SizedBox(height: Psizes.spaceBetweenInputFields,),
          TextFormFieldWidget(
            type: 'Password', 
            keyboardType: TextInputType.visiblePassword, 
            prefixIcon: const Icon(Icons.password_rounded), 
            validator: (passWord) => PValidators.passWordValidation(passWord)
          ),
          const PPrivacyCheck(),
          const SizedBox(height: Psizes.spaceBetweenInputFields,),
          LoginElevatedButton(
            onPressed: () => Get.to(() => const VerifyEmailScreen()), 
            title: 'Sign up'
          ),
        ],
      ),
    );
  }
}