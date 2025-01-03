import 'package:dlcm_ghs/screens/offline_screens/hymn_home.dart/controller/hymn_home_controller.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymn_home.dart/model_classes/side_menu_model.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:dlcm_ghs/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widget/categories_container_widget.dart';
import 'widget/favorite_container.dart';
import 'widget/home_card_image.dart';
import 'widget/home_search_widget.dart';
import 'widget/music_script_Button.dart';

class HymnHome extends StatelessWidget {
  const HymnHome({super.key});

  @override
  Widget build(BuildContext context) {
    const String appLink = 'https://play.google.com/store/apps/details?id=com.pixslide.dlcm_ghs';
    final controller = Get.put(HymnHomeController());
    GlobalKey<SideMenuState> sideMenukey = controller.sideMenuKey;
    return SideMenu(
      key: sideMenukey,
      closeIcon: const Icon(Icons.close_rounded, size: 25,color: PColor.light,),
      menu: buildMenu(context),
      type: SideMenuType.slideNRotate,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.menu_rounded,size: 25,),tooltip: 'Menu', 
          onPressed: () {
            Get.back();
            controller.openAndCloseSideMenu();
            }),
          title: Text('GOSPEL HYMNS',style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            IconButton(icon: const Icon(Icons.share_rounded, size: 25),
            onPressed: () async => Share.share(appLink),
            tooltip: 'Share',
            )
          ]
        ),
        body: SafeArea(
          child: Padding(
            padding: Psizes.defaultPaddingOnly2(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const HomeSearchWidget(),
                const SizedBox(height: Psizes.sm,),
                Expanded(
                  child: SizedBox(
                    width: PHelperFunctions.screenWidth(),
                    height: PHelperFunctions.screenHeight() * 0.79,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: PHelperFunctions.screenWidth(),
                            height: 125,
                            child: Stack(
                              children: [
                                ListView(
                                  controller: controller.controller,
                                  scrollDirection: Axis.horizontal,
                                  children: const [
                                    HomeImageCardWidget(image: PTexts.ghsGfix2ImageString,label: '',),
                                    HomeImageCardWidget(image: PTexts.guitarCoolImageString,label: 'Feel \nThe \nRhythm...',),
                                    HomeImageCardWidget(image: PTexts.guitarNoTextImageString,label: 'Feel \nThe \nHarmony...',),
                                  ],
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: PHelperFunctions.screenWidth() * 0.38,
                                  child: SmoothPageIndicator(
                                    controller: controller.controller,
                                    count: 3,
                                    axisDirection: Axis.horizontal,
                                    effect: const JumpingDotEffect(),
                                    onDotClicked: (index) => controller.onDotClicked(index),
                                  ),
                                )
                              ]
                            ),
                          ),
                          const SizedBox(height: Psizes.sm,),
                          const CategoriesContainerWidget(),
                          const SizedBox(height: Psizes.sm,),
                          const MusicScriptButton(),
                          const SizedBox(height: Psizes.sm,),
                          const FavoriteContainerWidget(),
                        ]
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}

Widget buildMenu(BuildContext context){
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        height: MediaQuery.of(context).orientation == Orientation.portrait ? PHelperFunctions.screenHeight() * 0.8 : PHelperFunctions.screenWidth() * 0.3,
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(color: PColor.light,),
          itemBuilder: (context, index) => ListTile(
            title: SideMenuModel.sideMenuItems[index].title,
            leading: SideMenuModel.sideMenuItems[index].icon,
            onTap: SideMenuModel.sideMenuItems[index].onTap,     
          ),     
          itemCount: SideMenuModel.sideMenuItems.length     
        ),
      )   
    ], 
  );
} 