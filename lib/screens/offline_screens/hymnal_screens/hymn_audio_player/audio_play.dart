import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/hymn_audio_player/controller/audio_controller.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AudioPlayer extends StatefulWidget {
  const AudioPlayer({super.key});

  @override
  State<AudioPlayer> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayer> {
  
  @override
  Widget build(BuildContext context) {
    final audioController = Get.put<AudioController>(AudioController());
    return Scaffold(
      appBar: AppBar(
        title: Text('AUDIO PLAYER', style: Theme.of(context).textTheme.headlineMedium,),
        leading: IconButton(tooltip: 'Back', onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back_rounded,size: 25,)),
        actions: const [],
      ),
      body: SafeArea(
        child: Padding(
          padding: Psizes.defaultPaddingOnly2(),
          child: SizedBox(
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
        )
      ),
    );
    
  }
}