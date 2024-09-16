import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/contents_screen/screens/content_hymn_detail_screen/content_hymn_details.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../utils/constants/sizes.dart';
import '../../../../../../../utils/constants/text_strings.dart';
import '../../../../model_classes/general_index_model_class.dart';

class AlphabeticExpansionWidget {
  AlphabeticExpansionWidget._();

  static Widget renderHymns(List<GeneralIndexModelClass> hymns){
   final scrollContoller = TrackingScrollController();
  return Scrollbar(
    interactive: true,
    scrollbarOrientation: ScrollbarOrientation.right,
    radius: const Radius.circular(18),
    thumbVisibility: false,
    trackVisibility: false,
    controller: scrollContoller,
    child: SingleChildScrollView(
      controller: scrollContoller,
      dragStartBehavior: DragStartBehavior.down,
      physics: const BouncingScrollPhysics(),
      child: ExpansionPanelList.radio(
        animationDuration: const Duration(milliseconds: 1000),
        materialGapSize: 10,
        children: hymns.map<ExpansionPanelRadio>((GeneralIndexModelClass hymn){
          return ExpansionPanelRadio(
            canTapOnHeader: true,
            value: hymn.alphabet, 
            headerBuilder: (context, isExpanded) {
              return Card(
                shape: const StadiumBorder(),
                child: Padding(
                  padding: Psizes.defaultPaddingOnly2(),
                  child: ListTile(
                    title: Text(hymn.alphabet,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 30),),
                    leading: CircleAvatar(
                       radius: 25,
                       child: Image.asset(PTexts.hymnLogoImageString, fit: BoxFit.cover,),
                    ),
                  ),
                ),
              );
            }, 
              body: SizedBox(
                height: 400,
                child: Scrollbar(
                  interactive: true,
                  scrollbarOrientation: ScrollbarOrientation.right,
                  radius: const Radius.circular(18),
                  thumbVisibility: false,
                  trackVisibility: false,
                  controller: scrollContoller,
                  thickness: BorderSide.strokeAlignOutside,
                  child: ListView.builder(
                  itemCount: hymn.generalIndex.length,  
                  itemBuilder: (context, index) => Card(
                    shape: const StadiumBorder(),
                    child: Padding(
                      padding: Psizes.defaultPaddingOnly2(),
                      child: ListTile(
                        title: Text(hymn.generalIndex[index].title, style: Theme.of(context).textTheme.titleLarge,),
                        subtitle: Text(hymn.generalIndex[index].subtitle, style: Theme.of(context).textTheme.titleSmall,),
                        leading: CircleAvatar(
                          radius: 25,
                          child: Image.asset(PTexts.hymnLogoImageString,fit: BoxFit.cover,),
                        ),
                        onTap: () => Get.to(() => ContentsDetailsScreen(hymn: hymn.generalIndex[index])),
                      ),
                    ),
                  ),
                ),
                ),
              )
          );
      
        }).toList(),
      ),
    ),
  );
}
}