import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../utils/constants/sizes.dart';
import '../../hymnal_screens/search_list_screen/search_screen.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: PHelperFunctions.screenWidth(),
     child: ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style,
       onPressed: () => Get.to(() => const SearchBarScreen()), 
       child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.search_rounded, size: 25,),
          const SizedBox(width: Psizes.sm,),
          Text('Search',style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 20),)
         ],
       )
      ),
    );
  }
}