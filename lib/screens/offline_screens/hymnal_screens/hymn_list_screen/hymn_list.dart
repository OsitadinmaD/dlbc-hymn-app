import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/model_classes/hymn_model_class.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/search_list_screen/search_screen.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:dlcm_ghs/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../detail_screen/detail_screen.dart';
import '../search_list_screen/controller/search_list_controller.dart';

class HymnListScreen extends StatelessWidget {
  const HymnListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put<SearchBarController>(SearchBarController(),permanent: true);
  

    List<HymnModel> hymns = controller.hymnListViews;


    return Scaffold(
      appBar: AppBar(
        title: Text('DCLM HYMNS', style: Theme.of(context).textTheme.headlineMedium,),
        leading: IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back_rounded,size: 25,)),
        actions: [
          IconButton(onPressed: () => Get.to(() => const SearchBarScreen()), icon: const Icon(Icons.search_rounded,size: 25,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings_rounded,size: 25,))
        ],
      ),
      body: Obx(() => SafeArea(
          child: Padding(
            padding: Psizes.defaultPaddingOnly2(),
            child: ListView.builder(
                itemCount: hymns.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: const StadiumBorder(),
                    child: Padding(
                      padding: Psizes.defaultPaddingOnly2(),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          child: Image.asset(PTexts.hymnLogoImageString,fit: BoxFit.cover,),
                        ),
                        title: Text(hymns[index].title, style: Theme.of(context).textTheme.titleLarge,),
                        subtitle: Text(hymns[index].subtitle, style: Theme.of(context).textTheme.titleSmall,),
                        trailing: IconButton(onPressed: (){
                          controller.addToFavoriteScreen(hymns[index]);
                        },
                        icon: Obx( () => Icon(Icons.favorite_rounded,size: 25,
                            color: controller.favoriteColor(hymns[index]),
                        ))),
                        onTap: () => Get.to(() => DetailsScreen(hymn: hymns[index])),
                        )
                    ),
                  );
                },
              ),
            ), 
          ) ,
        ),
      );
  }
}