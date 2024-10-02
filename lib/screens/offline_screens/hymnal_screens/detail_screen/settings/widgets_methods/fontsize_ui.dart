import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../utils/constants/colors.dart';
import '../controller/font_size_controller.dart';

class FontsizeUi extends StatelessWidget {
  const FontsizeUi({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FontSizeController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Font size',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.w400, fontSize: 15)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('A-',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 15)),
            Obx(
              () => Slider(
                value: controller.fontSize.value,
                allowedInteraction: SliderInteraction.tapAndSlide,
                divisions: 10,
                label: '${controller.fontSize.value.round()}',
                min: 16.0,
                max: 64.0,
                inactiveColor: PColor.grey,
                activeColor: PColor.darkerGrey,
                onChanged: (double size) => controller.setFontSize(size),
                thumbColor: PColor.light,
              ),
            ),
            Text('A+',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 20)),
          ],
        ),
        Obx(() => Text(
              'Check',
              style: TextStyle(fontSize: controller.fontSize.value),
            ))
      ],
    );
  }
}
