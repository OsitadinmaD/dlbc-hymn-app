import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/detail_screen/settings/controller/hymn_color_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChorusColor extends StatelessWidget {
  const ChorusColor({super.key});

  @override
  Widget build(BuildContext context) {
    final colorController = Get.put(HymnColorController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Chorus Color',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.w400, fontSize: 15)),
          ],
        ),
        const SizedBox(height: 5,),
        Obx( () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              colorController.chorusColorRadioButton(index: 1, color: const Color.fromARGB(227, 189, 133, 60),),
              const SizedBox(width: 5,),
              colorController.chorusColorRadioButton(index: 2, color: Colors.redAccent,),
              const SizedBox(width: 5,),
              colorController.chorusColorRadioButton(index: 3, color: const Color.fromARGB(255, 33, 82, 243),),
              const SizedBox(width: 5,),
              colorController.defaultChorusColorRadioButton(index: 4)
            ],
          ),
        ),
      ],
    );
  }
}