
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/helpers/helper_fncs.dart';

class PButtomAppBarWidget extends StatefulWidget {
  final void Function()? onPressedNext;
  final void Function()? onPressedBack;


  const PButtomAppBarWidget({
    super.key,
    required this.onPressedNext,
    required this.onPressedBack
  });

  

  @override
  State<PButtomAppBarWidget> createState() => _PButtomAppBarWidgetState();
}

class _PButtomAppBarWidgetState extends State<PButtomAppBarWidget>{
    @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: PHelperFunctions.bottomNavigationBarHeight() * 0.4,
      left: PHelperFunctions.screenWidth() * 0.14,
      child: Container(
        height: 70,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: PColor.darkGrey.withOpacity(0.7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(onPressed: () => widget.onPressedBack, 
            splashColor: PColor.light,
            icon: const Icon(Icons.arrow_back_ios_new_rounded, color: PColor.light,size: 30,),
          ),
          IconButton(onPressed: (){},
          splashColor: PColor.light, 
          icon: const Icon(Icons.repeat_rounded,color: PColor.light,size: 30,)),
          IconButton(onPressed: (){},
          splashColor: PColor.light, 
          icon: const Icon(Icons.play_arrow_rounded,color: PColor.light,size: 30,)),
          IconButton(onPressed: () => widget.onPressedNext,
          splashColor: PColor.light, 
          icon: const Icon(Icons.arrow_forward_ios_rounded,color: PColor.light,size: 30,)),
          ]
        ),
      )
    );
  }

}


  
