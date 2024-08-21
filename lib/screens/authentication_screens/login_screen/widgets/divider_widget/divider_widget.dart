import 'package:flutter/material.dart';

import '../../../../../utils/constants/helpers/helper_fncs.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
     children: [
       Positioned(
         child: Divider(endIndent: PHelperFunctions.screenWidth() * 0.52,),
       ),
       Positioned(
         left: PHelperFunctions.screenWidth() * 0.35,
         child: Text(title, style: Theme.of(context).textTheme.labelSmall,)
       ),
       Positioned(
         child: Divider(indent: PHelperFunctions.screenWidth() * 0.548,),
       ),
     ],
    );
  }
}