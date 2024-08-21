import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeImageCardWidget extends StatelessWidget {
  const HomeImageCardWidget({
    super.key,
    this.image,
    this.label,
  });

  final String? image,label;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15.0,
      margin: const EdgeInsets.all(4.0),
      child: Stack(
        children: [
          ClipRRect(
           borderRadius: BorderRadius.circular(15),
           child: Image.asset(image ?? PTexts.guitarCoolImageString,fit: BoxFit.cover,height: 120,width: PHelperFunctions.screenWidth(),)
          ),
          Positioned(
           top: 10,
           left: 20,
           child: Text(label!,style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 30,color: PColor.light),)
          )
        ]
      ),
    );
  }
}