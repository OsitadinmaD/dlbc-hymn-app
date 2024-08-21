import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';
import 'login_check_box.dart';
import 'text_button_widget.dart';

class RememberMeAndForgotPassword extends StatelessWidget {
  const RememberMeAndForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RememberMe(
          value: true,
          title: 'Remember Me',
          onChanged: (state){} ,
        ),
        const SizedBox(width: Psizes.lg,),
        LoginTextButton(
          title: 'forgot password?',
          onPressed: () => Get.toNamed('/forgotPassword'),
        ),
      ],
    );
  }
}