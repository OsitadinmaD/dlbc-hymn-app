import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';

class PicturesAttachments extends StatelessWidget {
  const PicturesAttachments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Can add a max of 4 pictures',style: Theme.of(context).textTheme.titleLarge,),
          ],
        ),
        const SizedBox(height: Psizes.sm,),
        SizedBox(
          height: 100,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                   height: 60,
                   width: 60,
                   decoration: BoxDecoration(
                    border: Border(
                     left: BorderSide(color: Get.isDarkMode ? PColor.light : PColor.dark ,style: BorderStyle.solid),
                     right: BorderSide(color: Get.isDarkMode ? PColor.light : PColor.dark ,style: BorderStyle.solid),
                     bottom: BorderSide(color: Get.isDarkMode ? PColor.light : PColor.dark ,style: BorderStyle.solid),
                     top: BorderSide(color: Get.isDarkMode ? PColor.light : PColor.dark ,style: BorderStyle.solid)
                    )
                   ),
                   child: const Center(child: Icon(Icons.add,size: 50,)),
                  ),
                )        
              ],
            ),
          )
        )
      ],
    );
  }
}