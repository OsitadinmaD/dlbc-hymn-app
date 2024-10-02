import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/detail_screen/settings/widgets_methods/fontsize_ui.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';
import 'widgets_methods/chorus_color.dart';
import 'widgets_methods/stanza_color.dart';

class PSettingsBottomSheet {
 PSettingsBottomSheet._();

  static Future<void> detailsBottomSheet(BuildContext context) {
    return showModalBottomSheet<void>(
            sheetAnimationStyle: AnimationStyle(curve: const FlippedCurve(Curves.easeInOutCubicEmphasized),duration: const Duration(milliseconds: 500),reverseCurve: const FlippedCurve(Curves.fastEaseInToSlowEaseOut),reverseDuration: const Duration(milliseconds: 500)),
            isScrollControlled: true,
            isDismissible: true,
            showDragHandle: true,
            useSafeArea: true,
            enableDrag: true,
            context: context, 
            builder: (context) {
              return Padding(
                padding: Psizes.defaultPaddingOnly2(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const FontsizeUi(),
                    const SizedBox(height: 20),
                    Divider(color: Get.isDarkMode ? PColor.lightGrey : PColor.darkerGrey,),
                    const ChorusColor(),
                    const SizedBox(height: 25),
                    const StanzaColor(),
                  ],
                ),
              );
            },
          );
  }
}