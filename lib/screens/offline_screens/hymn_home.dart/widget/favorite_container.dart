import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../utils/constants/sizes.dart';

class FavoriteContainerWidget extends StatelessWidget {
  const FavoriteContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          width: PHelperFunctions.screenWidth(),
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
              SizedBox(
                width: PHelperFunctions.screenWidth(),
              
                child: Row(
                  children: [
                    Text('Favorites',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),),
                    SizedBox(width: PHelperFunctions.screenWidth() * 0.4,),
                    OutlinedButton(onPressed: (){}, child: Text('See all',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 15),),),
                  ],
                ),
              ),
              SizedBox(
                width: PHelperFunctions.screenWidth(),
              
                child: Column(
                  children: [
                    Image.asset('assets/images/hymn_home_images/download-3.png'),
                    Text("Oops no Favourite yet", style: Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(
                width: PHelperFunctions.screenWidth(),
              
                child: Row(
                  children: [
                    Text('Last Played',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),),
                    SizedBox(width: PHelperFunctions.screenWidth() * 0.34,),
                    OutlinedButton(onPressed: (){}, child: Text('See all',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 15),),),
                  ],
                ),
              ),
            ],
          ),
        
        ),
      )
    );
  }
}

