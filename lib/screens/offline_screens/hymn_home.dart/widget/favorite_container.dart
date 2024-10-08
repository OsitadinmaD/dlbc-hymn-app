import 'package:dlcm_ghs/screens/offline_screens/favorite_screen/favorite_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../favorite_screen/persisting_services/favorite_service.dart';
import '../../hymnal_screens/detail_screen/detail_screen.dart';

class FavoriteContainerWidget extends StatefulWidget {
  const FavoriteContainerWidget({
    super.key,
  });

  @override
  State<FavoriteContainerWidget> createState() =>
      _FavoriteContainerWidgetState();
}

class _FavoriteContainerWidgetState extends State<FavoriteContainerWidget> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FavoriteService());
    return Expanded(
        child: SingleChildScrollView(
      child: Container(
        width: PHelperFunctions.screenWidth(),
        height: PHelperFunctions.screenHeight() * 0.58,
        padding: Psizes.defaultPaddingOnly2(),
        decoration: BoxDecoration(
            color: Get.isDarkMode ? PColor.darkerGrey : PColor.darkGrey,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(blurRadius: 50, blurStyle: BlurStyle.inner)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: PHelperFunctions.screenWidth(),
              child: Row(
                children: [
                  Text(
                    'Favorites',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    width: PHelperFunctions.screenWidth() * 0.4,
                  ),
                  OutlinedButton(
                    onPressed: () => Get.to(() => const FavoriteScreen()),
                    child: Text(
                      'See all',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            //const SizedBox(height: Psizes.sm,),
            Expanded(
              child: SizedBox(
                width: PHelperFunctions.screenWidth(),
                height: PHelperFunctions.screenHeight() * 0.45,
                child: Obx(
                  () => controller.favoriteHymns.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.only(left: 9.0, right: 9.0),
                          child: ListView.builder(
                            itemCount: controller.favoriteHymns.length,
                            //separatorBuilder: (context, index) => const Divider(),
                            itemBuilder: (context, index) {
                              if (index >= 4) {
                                return null;
                              } else {
                                return Card(
                                  shape: const OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.all(Radius.circular(8.0)),gapPadding: 1),
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
                                      style:
                                          Theme.of(context).textTheme.titleLarge,
                                    ),
                                    subtitle: Text(
                                      controller.favoriteHymns[index].subtitle,
                                      style:
                                          Theme.of(context).textTheme.titleSmall,
                                    ),
                                    trailing: IconButton(
                                        onPressed: () {
                                          controller
                                              .removeFromFavoriteScreen(index);
                                        },
                                        icon: Icon(Icons.favorite_rounded,
                                              size: 25,
                                              color: controller.favoriteColor(controller.favoriteHymns[index])
                                        ),),
                                    onTap: () => Get.to(() => DetailsScreen(
                                        hymn: controller.favoriteHymns[index])),
                                  ),
                                );
                              }
                            },
                          ),
                        )
                      : Column(
                          children: [
                            Image.asset(
                              'assets/images/hymn_home_images/download-3.png',
                            ),
                            Text(
                              "Oops no Favorite yet!",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: Psizes.md,
                            ),
                          ],
                        ),
                ),
              ),
            ),
            SizedBox(
              width: PHelperFunctions.screenWidth(),
              child: Row(
                children: [
                  Text(
                    'Last Played',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 20),
                  ),
                  SizedBox(
                    width: PHelperFunctions.screenWidth() * 0.34,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
