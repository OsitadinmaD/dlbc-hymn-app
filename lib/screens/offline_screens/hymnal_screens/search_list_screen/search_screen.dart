import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/search_list_screen/controller/search_list_controller.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/text_strings.dart';
import '../detail_screen/detail_screen.dart';
import '../model_classes/hymn_model_class.dart';

class SearchBarScreen extends StatelessWidget {
  const SearchBarScreen({super.key});

  @override
  Widget build(BuildContext  context) {
    final searchController = Get.put(SearchBarController());

    List<HymnModel> searchedHymn = searchController.searchResult;
    List<HymnModel> hymns = searchController.hymnListViews;


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: Psizes.appBarHeight * 1.7,
              color: Get.isDarkMode ? PColor.dark : PColor.light,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading:IconButton(
                      tooltip: 'Back',
                      onPressed: () => Get.back(), 
                      icon: const Icon(Icons.arrow_back_ios_rounded,size: 20,)
                    ),
                    trailing: IconButton(
                      tooltip: 'Clear',
                      icon: const Icon(Icons.clear, size: 20,),
                      onPressed: (){
                        searchController.textController.clear();
                        searchController.onSearchQueryChanged('');
                      },
                    ),
                    title: TextField(
                      autocorrect: false,
                      controller: searchController.textController,
                      decoration: const InputDecoration(
                        hintText: 'Search' ,
                        border: InputBorder.none,
                      ),
                      onChanged: (query) {
                        searchController.onSearchQueryChanged(query);
                      },
                    ),
                  ),
                ),
              ),
            ),
            
           Obx(() => Expanded(
               child: Padding(
                padding: Psizes.defaultPaddingOnly2(),
                child: searchController.searchResult.isNotEmpty || searchController.textController.text.isNotEmpty ?
                ListView.builder(
                    itemCount: searchedHymn.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: const StadiumBorder(),
                        child: Padding(
                          padding: Psizes.defaultPaddingOnly2(),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              child: Image.asset(PTexts.hymnLogoImageString),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 25 ,color: Get.isDarkMode ? Colors.white : Colors.black,),
                            title: Text(searchedHymn[index].title, style: Theme.of(context).textTheme.titleLarge,),
                            subtitle: Text(searchedHymn[index].subtitle, style: Theme.of(context).textTheme.titleSmall,),
                            onTap: () => Get.to(() => DetailsScreen(hymn: searchedHymn[index],)),
                          ),
                       ),
                      );
                    },
                  ) :
                 ListView.builder(
                    itemCount: hymns.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: const StadiumBorder(),
                        child: Padding(
                          padding: Psizes.defaultPaddingOnly2(),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              child: Image.asset(PTexts.hymnLogoImageString),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 25 ,color: Get.isDarkMode ? Colors.white : Colors.black,),
                            title: Text(hymns[index].title, style: Theme.of(context).textTheme.titleLarge,),
                            subtitle: Text(hymns[index].subtitle, style: Theme.of(context).textTheme.titleSmall,),
                            onTap: () => Get.to(() => DetailsScreen(
                              hymn: hymns[index],)
                          ),
                       ),
                      )
                      );
                    },
                  ),
                )
                         ),
           ),
        
          ]
        ),
      ),
    );
  }
}