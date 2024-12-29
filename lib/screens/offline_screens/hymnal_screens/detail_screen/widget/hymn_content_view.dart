import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model_classes/hymn_model_class.dart';
import '../settings/controller/font_size_controller.dart';
import '../settings/controller/hymn_color_controller.dart';

class HymnContentView {
  HymnModel hymn;
  HymnContentView({required this.hymn});

  final sizeController = Get.put(FontSizeController());
  final colorController = Get.put(HymnColorController());

  List<Widget> stanza1(ThemeData theme){
    List<Widget> stanza_1 = [];
    for(var i = 0; i < hymn.stanza1.length ; i++){
      stanza_1.add(Obx(() => Text(
          hymn.stanza1[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: sizeController.fontSize.value, color: colorController.stanzaColor.value),
        ),
      ));
    }
    return stanza_1;
  }

  List<Widget> stanza2(ThemeData theme){
    List<Widget> stanza_2 = [];
    for(var i = 0; i < hymn.stanza2.length ; i++){
      stanza_2.add(Obx(() => Text(
          hymn.stanza2[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: sizeController.fontSize.value,color: colorController.stanzaColor.value),
        ),
      ));
    }
    return stanza_2;
  }

  List<Widget> stanza3(ThemeData theme){
    List<Widget> stanza_3 = [];
    for(var i = 0; i < hymn.stanza3.length ; i++){
      stanza_3.add(Obx(() => Text(
          hymn.stanza3[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: sizeController.fontSize.value,color: colorController.stanzaColor.value),
        ),
      ));
    }
    return stanza_3;
  }

  List<Widget> stanza4(ThemeData theme){
    List<Widget> stanza_4 = [];
    for(var i = 0; i < hymn.stanza4.length ; i++){
      stanza_4.add(Obx(() => Text(
          hymn.stanza4[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: sizeController.fontSize.value,color: colorController.stanzaColor.value),
        ),
      ));
    }
    return stanza_4;
  }

  List<Widget> stanza5(ThemeData theme){
    List<Widget> stanza_5 = [];
    for(var i = 0; i < hymn.stanza5.length ; i++){
      stanza_5.add(Obx(() => Text(
          hymn.stanza5[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: sizeController.fontSize.value,color: colorController.stanzaColor.value),
        ),
      ));
    }
    return stanza_5;
  }

  List<Widget> stanza6(ThemeData theme){
    List<Widget> stanza_6 = [];
    for(var i = 0; i < hymn.stanza6.length ; i++){
      stanza_6.add(Obx(() => Text(
          hymn.stanza6[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: sizeController.fontSize.value,color: colorController.stanzaColor.value),
        ),
      ));
    }
    return stanza_6;
  }

  List<Widget> stanza7(ThemeData theme){
    List<Widget> stanza_7 = [];
    for(var i = 0; i < hymn.stanza7.length ; i++){
      stanza_7.add(Obx(() => Text(
          hymn.stanza7[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: sizeController.fontSize.value,color: colorController.stanzaColor.value),
        ),
      ));
    }
    return stanza_7;
  }

  List<Widget> stanza8(ThemeData theme){
    List<Widget> stanza_8 = [];
    for(var i = 0; i < hymn.stanza8.length ; i++){
      stanza_8.add(Obx(() => Text(
          hymn.stanza8[i],
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: sizeController.fontSize.value,color: colorController.stanzaColor.value),
        ),
      ));
    }
    return stanza_8;
  }

  List<Widget> chorus1(ThemeData theme){
    List<Widget> chorus_1 = [];
    for(var i = 0; i < hymn.chorus1.length ; i++){
      chorus_1.add(Obx(() => Text(
          hymn.chorus1[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: sizeController.fontSize.value,
            color: colorController.chorusColor.value
          ),
        ),
      ));
    }
    return chorus_1;
  }

  List<Widget> chorus2(ThemeData theme){
    List<Widget> chorus_2 = [];
    for(var i = 0; i < hymn.chorus2.length ; i++){
      chorus_2.add(Obx(() => Text(
          hymn.chorus2[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: sizeController.fontSize.value,
            color: colorController.chorusColor.value
          ),
        ),
      ));
    }
    return chorus_2;
  }

  List<Widget> chorus3(ThemeData theme){
    List<Widget> chorus_3 = [];
    for(var i = 0; i < hymn.chorus3.length ; i++){
      chorus_3.add(Obx(() => Text(
          hymn.chorus3[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: sizeController.fontSize.value,
            color: colorController.chorusColor.value
          ),
        ),
      ));
    }
    return chorus_3;
  }

  List<Widget> chorus4(ThemeData theme){
    List<Widget> chorus_4 = [];
    for(var i = 0; i < hymn.chorus4.length ; i++){
      chorus_4.add(Obx(() => Text(
          hymn.chorus4[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: sizeController.fontSize.value,
            color: colorController.chorusColor.value
          ),
        ),
      ));
    }
    return chorus_4;
  }

  List<Widget> chorus5(ThemeData theme){
    List<Widget> chorus_5 = [];
    for(var i = 0; i < hymn.chorus5.length ; i++){
      chorus_5.add(Obx(() => Text(
          hymn.chorus5[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: sizeController.fontSize.value,
            color: colorController.chorusColor.value
          ),
        ),
      ));
    }
    return chorus_5;
  }

  List<Widget> chorus6(ThemeData theme){
    List<Widget> chorus_6 = [];
    for(var i = 0; i < hymn.chorus6.length ; i++){
      chorus_6.add(Obx(() => Text(
          hymn.chorus6[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: sizeController.fontSize.value,
            color: colorController.chorusColor.value
          ),
        ),
      ));
    }
    return chorus_6;
  }

  List<Widget> chorus7(ThemeData theme){
    List<Widget> chorus_7 = [];
    for(var i = 0; i < hymn.chorus7.length ; i++){
      chorus_7.add(Obx(() => Text(
          hymn.chorus7[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: sizeController.fontSize.value,
            color: colorController.chorusColor.value
          ),
        ),
      ));
    }
    return chorus_7;
  }

  List<Widget> chorus8(ThemeData theme){
    List<Widget> chorus_8 = [];
    for(var i = 0; i < hymn.chorus8.length ; i++){
      chorus_8.add(Obx(() => Text(
          hymn.chorus8[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: sizeController.fontSize.value,
            color: colorController.chorusColor.value
          ),
        ),
      ));
    }
    return chorus_8;
  }

  List<Widget> interlude1(ThemeData theme){
    List<Widget> interlude_1 = [];
    for(var i = 0; i < hymn.interlude1.length ; i++){
      interlude_1.add(Obx(() => Text(
          hymn.interlude2[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: sizeController.fontSize.value,
            color: colorController.chorusColor.value
          ),
        ),
      ));
    }
    return interlude_1;
  }


  List<Widget> interlude2(ThemeData theme){
    List<Widget> interlude_2 = [];
    for(var i = 0; i < hymn.interlude2.length ; i++){
      interlude_2.add(Obx(() => Text(
          hymn.interlude2[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: sizeController.fontSize.value,
            color: colorController.chorusColor.value
          ),
        ),
      ));
    }
    return interlude_2;
  }

  List<Widget> interlude3(ThemeData theme){
    List<Widget> interlude_3 = [];
    for(var i = 0; i < hymn.interlude3.length ; i++){
      interlude_3.add(Obx(() => Text(
          hymn.interlude3[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: sizeController.fontSize.value,
            color: colorController.chorusColor.value
          ),
        ),
      ));
    }
    return interlude_3;
  }

  List<Widget> interlude4(ThemeData theme){
    List<Widget> interlude_4 = [];
    for(var i = 0; i < hymn.interlude4.length ; i++){
      interlude_4.add(Obx(() => Text(
          hymn.interlude4[i],
          style: theme.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Poppins',
            fontSize: sizeController.fontSize.value,
            color: colorController.chorusColor.value
          ),
        ),
      ));
    }
    return interlude_4;
  }


}