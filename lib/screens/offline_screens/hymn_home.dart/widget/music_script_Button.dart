import 'package:dlcm_ghs/screens/offline_screens/doctrinal_screen/music_script_screen.dart/music_script.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../utils/constants/sizes.dart';

class MusicScriptButton extends StatelessWidget {
  const MusicScriptButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: PHelperFunctions.screenWidth(),
     child: ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style,
       onPressed: () => Get.to(() => const MusicScript()), 
       child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.queue_music_rounded, size: 25,),
          const SizedBox(width: Psizes.sm,),
          Text('Music Script',style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 20),)
         ],
       )
      ),
    );
  }
}