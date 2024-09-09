import 'package:dlcm_ghs/screens/offline_screens/doctrinal_screen/bible_doctrine_screen.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/contents_screen/contents_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../../favorite_screen/favorite_screen.dart';
import '../../hymnal_screens/hymn_list_screen/hymn_list.dart';
import 'chip_widget.dart';

class CategoriesChipWidget extends StatelessWidget {
  const CategoriesChipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PChipWidget(
              label: ' All Hymns ', 
              icon: const Icon(Icons.dataset_rounded),
              onTap: () => Get.to(() => const HymnListScreen()),
            ),
            const SizedBox(width: 5,),
            PChipWidget(
              label: ' Contents ', 
              icon: const Icon(Icons.list_rounded),
              onTap: () => Get.to(() => const ContentsScreen()),
            ),
          ],
        ),
        const SizedBox(height: Psizes.sm,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PChipWidget(
              label: '  Favorites  ', 
              icon: const Icon(Icons.favorite_rounded),
              onTap: () => Get.to(() =>const FavoriteScreen()),
            ),
            const SizedBox(width: 38,),
            PChipWidget(
              label: '   Audio   ', 
              icon: const Icon(Icons.audiotrack_rounded),
              onTap: (){},
            ),
          ],
        ),
        const SizedBox(height: Psizes.sm,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PChipWidget(
              label: '  History  ', 
              icon: const Icon(Icons.history_edu_rounded),            
              onTap: (){},
            ),
            const SizedBox(width: 20,),
            PChipWidget(
              label: 'Bible Doctrine', 
              icon: const Icon(Icons.book_rounded),
              onTap: () => Get.to(() => const PDFScreenView()),
            ),
          ],
        )
      ],
    );
  }
}