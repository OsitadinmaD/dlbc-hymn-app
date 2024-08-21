import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../utils/constants/sizes.dart';
import '../../../../../../../utils/constants/text_strings.dart';
import '../../../../detail_screen/detail_screen.dart';
import '../../../../model_classes/topical_index_model.dart';

class TopicalContentsExpansionWidget {
  TopicalContentsExpansionWidget._();

  static Widget renderTopicalContents(List<TopicalIndexModel> contents){
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
        elevation: 8.0,
        materialGapSize: 10,
        children: contents.map<ExpansionPanelRadio>((TopicalIndexModel content) {
          return ExpansionPanelRadio(
            canTapOnHeader: true,
            value: content.topicalIndex, 
            headerBuilder: (context, isExpanded) => Card(
              shape: const StadiumBorder(),
              child: Padding(
                padding: Psizes.defaultPaddingOnly2(),
                child: ListTile(
                  title: Text(content.topicalIndex, style: Theme.of(context).textTheme.titleLarge,),
                  leading: CircleAvatar(
                    radius: 25,
                    child: Image.asset(PTexts.hymnLogoImageString, fit: BoxFit.cover,),
                  ),
                ),
              ),
            ), 
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
                  itemCount: content.generalIndex.length,
                  itemBuilder: (context, index) => Card(
                    shape: const StadiumBorder(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(content.generalIndex[index].title, style: Theme.of(context).textTheme.titleLarge,),
                        subtitle: Text(content.generalIndex[index].subtitle, style: Theme.of(context).textTheme.titleSmall),
                        leading: CircleAvatar(
                          radius: 25,
                          child: Image.asset(PTexts.hymnLogoImageString, fit: BoxFit.cover,),
                        ),
                        onTap: () => Get.to(() => DetailsScreen(hymn: content.generalIndex[index])),
                      ),
                    ),
                  ),
                ),
              ),
            )
          );
        }).toList()
      ),
    ),
  );
}
}