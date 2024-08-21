import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/contents_screen/screens/topical_index_screen/controller/topical_index_controller.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/contents_screen/screens/topical_index_screen/widgets/topical_contents_expansion_widget.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopicalIndex extends StatelessWidget {
  const TopicalIndex({super.key});

 
  @override
  Widget build(BuildContext context) {
     final controller = Get.put(TopicalIndexController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Psizes.defaultPaddingOnly2(),
          child: Obx(() => Container(
              child: TopicalContentsExpansionWidget.renderTopicalContents(controller.topicalIndexContents),
            ),
          ),
        ) 
      ),
    );
  }
}

