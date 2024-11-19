import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/helpers/helper_fncs.dart';
import '../../hymn_audio_player/controller/audio_controller.dart';
import '../detail_screen.dart';

class PlayHymnSound extends StatelessWidget {
  const PlayHymnSound({
    super.key,
    required this.widget,
  });

  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      onPressed: (){
        final audioController = Get.put<AudioController>(AudioController());
        Get.snackbar("${widget.hymn.title}  ${widget.hymn.subtitle}", widget.hymn.subtitle,
          snackPosition: SnackPosition.BOTTOM,
          animationDuration: Duration(milliseconds: 1000),
          isDismissible: true,
          duration: audioController.player.duration ?? Duration(milliseconds: 2000),
          dismissDirection: DismissDirection.horizontal,
          onTap: (snack) => Get.back(),
          messageText: SizedBox(
            width: PHelperFunctions.screenWidth() * 0.9,
            height: PHelperFunctions.screenHeight() * 0.22,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                audioController.progressBar(),
                Row(
                  children: [
                    audioController.controlButtons(),
                    audioController.playBackControlButton(),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      child: Icon(Icons.play_arrow_rounded),);
  }
}