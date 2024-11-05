import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/profile/controller/image_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../utils/constants/sizes.dart';
class PhotoSource {
  const PhotoSource._();

  static Future<void> photoSource(BuildContext context) {
    final imageController = Get.put<ImagePickerController>(ImagePickerController());
    return showModalBottomSheet<void>(
      context: context,
      isDismissible: true,
      showDragHandle: true,
      useSafeArea: true,
      enableDrag: true,
      sheetAnimationStyle: AnimationStyle(curve: const FlippedCurve(Curves.easeInOutCubicEmphasized),duration: const Duration(milliseconds: 500),reverseCurve: const FlippedCurve(Curves.fastEaseInToSlowEaseOut),reverseDuration: const Duration(milliseconds: 500)),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Choose Photo Source', style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: Psizes.md,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(onPressed: () async => imageController.selectImage(imageSource: ImageSource.camera), 
                      icon: Icon(Icons.photo_camera, size: 50,),tooltip: 'Photo Camera',),
                    const SizedBox(height: Psizes.sm,),
                    Text('Photo Camera', style: Theme.of(context).textTheme.labelLarge,),
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: () async => imageController.selectImage(imageSource: ImageSource.gallery), 
                      icon: Icon(Icons.photo_library_rounded, size: 50,),tooltip: 'Photo Library',),
                    const SizedBox(height: Psizes.sm,),
                    Text('Photo Library', style: Theme.of(context).textTheme.labelLarge,),
                  ],
                ),
              ],
            )
          ]
        );
      }
    );
  }  
}