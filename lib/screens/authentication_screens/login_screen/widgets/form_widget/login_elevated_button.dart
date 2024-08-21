import 'package:flutter/material.dart';

import '../../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../../utils/constants/sizes.dart';

class LoginElevatedButton extends StatelessWidget {
  const LoginElevatedButton({
    super.key,
    required this.onPressed,
    required this.title
  });

  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: PHelperFunctions.screenWidth() * 0.9,
      height: Psizes.elevatedButtonSize,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(title)
      ),
    );
  }
}