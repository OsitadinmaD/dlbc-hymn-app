import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../controller/font_size_controller.dart';

class PBottomSheet {
  PBottomSheet._();

  static Future<void> detailsBottomSheet(BuildContext context) {
    return showModalBottomSheet<void>(
            isScrollControlled: true,
            isDismissible: true,
            showDragHandle: true,
            useSafeArea: true,
            enableDrag: true,
            context: context, 
            builder: (context) {
              final controller = Get.put(FontSizeController());
              return Padding(
                padding: Psizes.defaultPaddingOnly2(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Font size', style: Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w400, fontSize: 15)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('A-', style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 15)),
                            Obx(() => Slider(
                               value: controller.fontSize.value,
                               allowedInteraction: SliderInteraction.tapAndSlide,
                               divisions: 10,
                               label: '${controller.fontSize.value.round()}',
                               min: 16.0,
                               max: 64.0,
                               inactiveColor: PColor.grey,
                               activeColor: PColor.darkerGrey,
                               onChanged: (double size) =>controller.setFontSize(size),
                               thumbColor: PColor.light,
                              ),
                            ),
                            Text('A+', style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 20)),
                          ],
                        ),
                        Obx(() => Text('Check',style: TextStyle(fontSize: controller.fontSize.value),))
                  ],
                ),
              );
            },
          );
  }
}