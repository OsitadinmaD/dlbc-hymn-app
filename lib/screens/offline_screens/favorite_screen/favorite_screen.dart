import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/hymn_list_screen/hymn_list.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/search_list_screen/controller/search_list_controller.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:dlcm_ghs/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/helpers/helper_fncs.dart';
import '../hymnal_screens/detail_screen/detail_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =
        Get.put<SearchBarController>(SearchBarController(), permanent: true);

    //List<HymnModel> hymns = controller.favoriteHymns;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FAVORITE HYMNS',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 25,
            )),
        actions: [
          OutlinedButton(
              onPressed: () => Get.to(() => const HymnListScreen()),
              child: Text(
                'ADD',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.w600),
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: Psizes.defaultPaddingOnly2(),
          child: Obx(
            () => controller.favoriteHymns.isNotEmpty
                ? ListView.builder(
                    itemCount: controller.favoriteHymns.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: const StadiumBorder(),
                        child: Padding(
                          padding: Psizes.defaultPaddingOnly2(),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              child: Image.asset(
                                PTexts.hymnLogoImageString,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(
                              controller.favoriteHymns[index].title,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            subtitle: Text(
                              controller.favoriteHymns[index].subtitle,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  controller.removeFromFavoriteScreen(index);
                                },
                                icon: Icon(
                                  Icons.favorite_rounded,
                                  size: 25,
                                  color: controller.favoriteColor(
                                      controller.favoriteHymns[index]),
                                )),
                            onTap: () => Get.to(() => DetailsScreen(
                                hymn: controller.favoriteHymns[index])),
                          ),
                        ),
                      );
                    },
                  )
                : Column(
                    children: [
                      Image.asset(
                        'assets/images/hymn_home_images/download-3.png',
                        height: PHelperFunctions.screenHeight() * 0.6,
                      ),
                      Text(
                        "Oops no Favorite yet!",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      const SizedBox(
                        height: Psizes.md,
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
