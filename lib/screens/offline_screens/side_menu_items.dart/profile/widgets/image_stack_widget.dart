import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../../utils/constants/text_strings.dart';

class ImageStackWidget extends StatelessWidget {
  const ImageStackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: PHelperFunctions.screenHeight() * 0.3,
          width: PHelperFunctions.screenWidth() ,
          decoration: BoxDecoration(
            color: Get.isDarkMode ? PColor.darkGrey : PColor.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: CircleAvatar(
              maxRadius: 70,
              minRadius: 40,
              backgroundColor: PColor.light,
              //radius: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(PTexts.guitarCoolImageString,fit: BoxFit.cover,height: 150,)
              )
            ),
          )
        ),
        Positioned(
          bottom: 45,
          right: 100,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              border: Border.all(color: Get.isDarkMode ? PColor.light : PColor.dark,width: 1),
              borderRadius: BorderRadius.circular(60),
              color: PColor.primaryColor
            ),
            child: Center(child: IconButton(tooltip: 'Choose picture', icon: const Icon(Icons.camera_alt_outlined,size: 20,color: PColor.light,),onPressed: (){},))),
        )
      ],
    );
  }
}