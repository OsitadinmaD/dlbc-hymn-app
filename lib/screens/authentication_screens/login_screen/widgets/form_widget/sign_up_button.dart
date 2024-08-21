import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'text_button_widget.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Here for the first time?', style: Theme.of(context).textTheme.labelMedium,),
        LoginTextButton(
          title: 'Sign Up', 
          onPressed: () => Get.toNamed('/signUp'),
        )
      ],
    );
  }
}