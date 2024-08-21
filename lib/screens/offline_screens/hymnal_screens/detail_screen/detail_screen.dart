import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/detail_screen/bottom_sheets/bottom_sheet.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/detail_screen/controller/details_page_controller.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/detail_screen/widget/buttom_appbar.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/font_size_controller.dart';




class DetailsScreen extends StatefulWidget {
  final dynamic hymn;
  const DetailsScreen({super.key, required this.hymn});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final controller = Get.put(FontSizeController());
  List<Widget> stanza1(ThemeData theme){
    List<Widget> stanza_1 = [];
    for(var i = 0; i < widget.hymn.stanza1.length ; i++){
      stanza_1.add(Obx(() => Text(
          widget.hymn.stanza1[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: controller.fontSize.value),
        ),
      ));
    }
    return stanza_1;
  }

  List<Widget> stanza2(ThemeData theme){
    List<Widget> stanza_2 = [];
    for(var i = 0; i < widget.hymn.stanza2.length ; i++){
      stanza_2.add(Obx(() => Text(
          widget.hymn.stanza2[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: controller.fontSize.value),
        ),
      ));
    }
    return stanza_2;
  }

  List<Widget> stanza3(ThemeData theme){
    List<Widget> stanza_3 = [];
    for(var i = 0; i < widget.hymn.stanza3.length ; i++){
      stanza_3.add(Obx(() => Text(
          widget.hymn.stanza3[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: controller.fontSize.value),
        ),
      ));
    }
    return stanza_3;
  }

  List<Widget> stanza4(ThemeData theme){
    List<Widget> stanza_4 = [];
    for(var i = 0; i < widget.hymn.stanza4.length ; i++){
      stanza_4.add(Obx(() => Text(
          widget.hymn.stanza4[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: controller.fontSize.value),
        ),
      ));
    }
    return stanza_4;
  }

  List<Widget> stanza5(ThemeData theme){
    List<Widget> stanza_5 = [];
    for(var i = 0; i < widget.hymn.stanza5.length ; i++){
      stanza_5.add(Obx(() => Text(
          widget.hymn.stanza5[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: controller.fontSize.value),
        ),
      ));
    }
    return stanza_5;
  }

  List<Widget> stanza6(ThemeData theme){
    List<Widget> stanza_6 = [];
    for(var i = 0; i < widget.hymn.stanza6.length ; i++){
      stanza_6.add(Obx(() => Text(
          widget.hymn.stanza6[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: controller.fontSize.value),
        ),
      ));
    }
    return stanza_6;
  }

  List<Widget> stanza7(ThemeData theme){
    List<Widget> stanza_7 = [];
    for(var i = 0; i < widget.hymn.stanza7.length ; i++){
      stanza_7.add(Obx(() => Text(
          widget.hymn.stanza7[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: controller.fontSize.value),
        ),
      ));
    }
    return stanza_7;
  }

  List<Widget> stanza8(ThemeData theme){
    List<Widget> stanza_8 = [];
    for(var i = 0; i < widget.hymn.stanza8.length ; i++){
      stanza_8.add(Obx(() => Text(
          widget.hymn.stanza8[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: controller.fontSize.value),
        ),
      ));
    }
    return stanza_8;
  }

  List<Widget> chorus1(ThemeData theme){
    List<Widget> chorus_1 = [];
    for(var i = 0; i < widget.hymn.chorus1.length ; i++){
      chorus_1.add(Obx(() => Text(
          widget.hymn.chorus1[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: controller.fontSize.value
          ),
        ),
      ));
    }
    return chorus_1;
  }

  List<Widget> chorus2(ThemeData theme){
    List<Widget> chorus_2 = [];
    for(var i = 0; i < widget.hymn.chorus2.length ; i++){
      chorus_2.add(Obx(() => Text(
          widget.hymn.chorus2[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: controller.fontSize.value,
          ),
        ),
      ));
    }
    return chorus_2;
  }

  List<Widget> chorus3(ThemeData theme){
    List<Widget> chorus_3 = [];
    for(var i = 0; i < widget.hymn.chorus3.length ; i++){
      chorus_3.add(Obx(() => Text(
          widget.hymn.chorus3[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: controller.fontSize.value
          ),
        ),
      ));
    }
    return chorus_3;
  }

  List<Widget> chorus4(ThemeData theme){
    List<Widget> chorus_4 = [];
    for(var i = 0; i < widget.hymn.chorus4.length ; i++){
      chorus_4.add(Obx(() => Text(
          widget.hymn.chorus4[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: controller.fontSize.value
          ),
        ),
      ));
    }
    return chorus_4;
  }

  List<Widget> chorus5(ThemeData theme){
    List<Widget> chorus_5 = [];
    for(var i = 0; i < widget.hymn.chorus5.length ; i++){
      chorus_5.add(Obx(() => Text(
          widget.hymn.chorus5[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: controller.fontSize.value
          ),
        ),
      ));
    }
    return chorus_5;
  }

  List<Widget> chorus6(ThemeData theme){
    List<Widget> chorus_6 = [];
    for(var i = 0; i < widget.hymn.chorus6.length ; i++){
      chorus_6.add(Obx(() => Text(
          widget.hymn.chorus6[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: controller.fontSize.value
          ),
        ),
      ));
    }
    return chorus_6;
  }

  List<Widget> chorus7(ThemeData theme){
    List<Widget> chorus_7 = [];
    for(var i = 0; i < widget.hymn.chorus7.length ; i++){
      chorus_7.add(Obx(() => Text(
          widget.hymn.chorus7[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: controller.fontSize.value
          ),
        ),
      ));
    }
    return chorus_7;
  }

  List<Widget> chorus8(ThemeData theme){
    List<Widget> chorus_8 = [];
    for(var i = 0; i < widget.hymn.chorus8.length ; i++){
      chorus_8.add(Obx(() => Text(
          widget.hymn.chorus8[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: controller.fontSize.value
          ),
        ),
      ));
    }
    return chorus_8;
  }

  List<Widget> interlude1(ThemeData theme){
    List<Widget> interlude_1 = [];
    for(var i = 0; i < widget.hymn.interlude1.length ; i++){
      interlude_1.add(Obx(() => Text(
          widget.hymn.interlude2[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: controller.fontSize.value
          ),
        ),
      ));
    }
    return interlude_1;
  }


  List<Widget> interlude2(ThemeData theme){
    List<Widget> interlude_2 = [];
    for(var i = 0; i < widget.hymn.interlude2.length ; i++){
      interlude_2.add(Obx(() => Text(
          widget.hymn.interlude2[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: controller.fontSize.value
          ),
        ),
      ));
    }
    return interlude_2;
  }

  List<Widget> interlude3(ThemeData theme){
    List<Widget> interlude_3 = [];
    for(var i = 0; i < widget.hymn.interlude3.length ; i++){
      interlude_3.add(Obx(() => Text(
          widget.hymn.interlude3[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: controller.fontSize.value
          ),
        ),
      ));
    }
    return interlude_3;
  }

  List<Widget> interlude4(ThemeData theme){
    List<Widget> interlude_4 = [];
    for(var i = 0; i < widget.hymn.interlude4.length ; i++){
      interlude_4.add(Obx(() => Text(
          widget.hymn.interlude4[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: controller.fontSize.value
          ),
        ),
      ));
    }
    return interlude_4;
  }
  
  @override
  Widget build(BuildContext context) {
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
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_rounded,size: 30,)),
          IconButton(onPressed: (){
            PBottomSheet.detailsBottomSheet(context);
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
                    children: stanza1(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: chorus1(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: interlude1(theme)
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: stanza2(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: chorus2(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: interlude2(theme)
                  ),
                ),
                        
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: stanza3(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: chorus3(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: interlude3(theme)
                  ),
                ),
                        
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: stanza4(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: chorus4(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: interlude4(theme)
                  ),
                ),
                        
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: stanza5(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: chorus5(theme)
                  ),
                ),
                        
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: stanza6(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: chorus6(theme)
                  ),
                ),
                        
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: stanza7(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: chorus7(theme)
                  ),
                ),
                        
                Padding(
                  padding: const EdgeInsets.only(left: 15,bottom: 10,right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: stanza8(theme)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10, right:25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: chorus8(theme)
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