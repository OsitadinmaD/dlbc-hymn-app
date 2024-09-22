import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/detail_screen/bottom_sheets/bottom_sheet.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/detail_screen/controller/details_page_controller.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/detail_screen/widget/buttom_appbar.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../favorite_screen/persisting_services/favorite_service.dart';
import 'widget/hymn_content_view.dart';




class DetailsScreen extends StatefulWidget {
  final dynamic hymn;
  const DetailsScreen({super.key, required this.hymn});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  
  @override
  Widget build(BuildContext context) {
    final hymnDetails = HymnContentView(hymn: widget.hymn); 
    final favoriteController = Get.put(permanent: true, FavoriteService());
    final pageController = Get.put(DetailsPageController());
    final theme = Theme.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.hymn.title} ${widget.hymn.subtitle}',style: Theme.of(context).textTheme.titleMedium!.copyWith(
          fontFamily: 'Poppins',
          fontSize: Psizes.fontSizeLg),
        ),
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_rounded,size: 30)),
        actions: [
          Obx( () => IconButton(onPressed: () => favoriteController.addToFavoriteScreen(widget.hymn), 
            icon: Icon(Icons.favorite_rounded,size: 30,
            color:  favoriteController.favoriteColor(widget.hymn),),
            tooltip: favoriteController.favoriteHymns.contains(widget.hymn) ? 'Remove from Favorite' : 'Add to Favorite',
            )
            
          ),
          IconButton(onPressed: () async {
            await PBottomSheet.detailsBottomSheet(context);
          }, 
          icon: const Icon(Icons.settings_rounded,size: 30,)),
        ],
        scrolledUnderElevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Stack(
          children: [
            PageView(
              controller: pageController.pageController,
              children: [ListView(
              controller: pageController.pageController,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.stanza1(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.chorus1(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.interlude1(theme)
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.stanza2(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.chorus2(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.interlude2(theme)
                  ),
                ),
                        
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.stanza3(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.chorus3(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.interlude3(theme)
                  ),
                ),
                        
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.stanza4(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.chorus4(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.interlude4(theme)
                  ),
                ),
                        
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.stanza5(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.chorus5(theme)
                  ),
                ),
                        
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.stanza6(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.chorus6(theme)
                  ),
                ),
                        
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.stanza7(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.chorus7(theme)
                  ),
                ),
                        
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.stanza8(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: hymnDetails.chorus8(theme)
                  ),
                ),
                const SizedBox(height: 50,)
              ],
            ),
              ]
            ),
          PButtomAppBarWidget(onPressedNext: () => pageController.getToNextIndex(),
           onPressedBack:() => pageController.getToPreviousIndex())
        ]
        )
      ),
    );
  }
}