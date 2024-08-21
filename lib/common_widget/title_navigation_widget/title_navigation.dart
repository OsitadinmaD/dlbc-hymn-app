import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class PTitlePopNavigationWidget extends StatelessWidget {
  const PTitlePopNavigationWidget({
    super.key,
    required this.title,
    required this.onPressed
  });

  final String title;
  final Function()? onPressed;
   
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    Color color = isDark ? PColor.light : PColor.dark;
    return Row(
      children: [
        IconButton(
          onPressed: onPressed, 
          icon: Icon(Icons.arrow_back_rounded, size: Psizes.iconLg, color: color,),
        ),
        Text(title, style: Theme.of(context).textTheme.titleLarge,)
      ],
    );
  }
}