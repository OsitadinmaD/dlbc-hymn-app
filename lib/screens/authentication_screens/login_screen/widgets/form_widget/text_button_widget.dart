import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({
    super.key,
    required this.title,
    required this.onPressed
  });

  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed, 
      child: Text(title, style: const TextStyle(color: PColor.primaryColor, fontSize: Psizes.fontSizeSm))
    );
  }
}