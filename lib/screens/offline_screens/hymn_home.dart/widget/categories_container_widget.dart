import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../utils/constants/sizes.dart';
import 'categories_chip_widget.dart';

class CategoriesContainerWidget extends StatelessWidget {
  const CategoriesContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PHelperFunctions.screenWidth(),
      height: 200,
      padding: Psizes.defaultPaddingOnly2(),
      decoration: BoxDecoration(
        color: Get.isDarkMode ? PColor.darkerGrey : PColor.darkGrey,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            blurRadius: 50,
            blurStyle: BlurStyle.inner
          )
        ]
      ),
      child: Column(
        children: [
          Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Categories',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),),
            ],
          ),
          const SizedBox(height: 5,),
          const CategoriesChipWidget()
        ],
      ),
    );
  }
}