import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/contents_screen/screens/alphabetic_order%20_screen/controller/general_index_controller.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/contents_screen/screens/alphabetic_order%20_screen/widget/alphabetic_expansion_widget.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AlphabeticOrderScreen extends StatelessWidget {
  const AlphabeticOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GeneralIndexController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Psizes.defaultPaddingOnly2(),
          child: Obx(() => Container(
            child: AlphabeticExpansionWidget.renderHymns(controller.generalIndexedHymns),
          ),
          )
        )
      )
    );
  }
}