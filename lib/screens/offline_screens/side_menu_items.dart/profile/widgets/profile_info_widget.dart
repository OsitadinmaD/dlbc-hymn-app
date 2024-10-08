import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/helpers/helper_fncs.dart';

class ProfileInfoWidget extends StatelessWidget {
  final String title,info;

  const ProfileInfoWidget({
    required this.title, required this.info,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 24),),
          ],
        ),
        Container(
          height: PHelperFunctions.screenHeight() * 0.05,
          width: PHelperFunctions.screenWidth(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Get.isDarkMode ? PColor.grey : PColor.darkGrey,
          ),
          child:Center(child: Text(info,style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18))),
        )
      ],
    );
  }
}