import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';

class AudioController extends GetxController {
  
  final player = AudioPlayer();
  Rx<double> speed = 1.0.obs;
  Rx<double> volume = 0.0.obs;
  Rx<String> audioPath = 'assets/audio/two_steps_from_hell_never_back_down_music_video_mp3_3422.mp3'.obs;

  


  @override
  void onInit() {
    super.onInit();
    WidgetsFlutterBinding.ensureInitialized();
    _setUpAudioPlayer();
  }

  //void initAudioPath({required String hymnAudioPath}){
    //if (hymnAudioPath == ''){
      //audioPath.value = 'assets/audio/two_steps_from_hell_never_back_down_music_video_mp3_3422.mp3';
    //}
    //audioPath.value = hymnAudioPath;
  //}

  void setAudioSource() async{
   // AudioSource path = AudioSource.asset(audioPath);
    try {
      await player.setAudioSource(AudioSource.asset(audioPath.value));
    } catch (e) {
      // ignore: avoid_print
      print('An Error loading the audio source: $e');
         Get.snackbar('Error', 'Error loading the audio source: $e',
            animationDuration: Duration(milliseconds: 500),
            onTap: (snack) => Get.back(),
            backgroundColor: PColor.error,
            colorText: PColor.light,
            duration: Duration(milliseconds: 2500),
            isDismissible: true,
            snackPosition: SnackPosition.BOTTOM,
          );
    }
  }



  Future<void> _setUpAudioPlayer() async  {
    player.playbackEventStream.listen(
      (event){},
      onError: (Object error, StackTrace stackTrace){
        // ignore: avoid_print
        print('A stream error occured: $error');
         Get.snackbar('Error', 'A stream error occured: $error',
            animationDuration: Duration(milliseconds: 500),
            onTap: (snack) => Get.back(),
            backgroundColor: PColor.error,
            colorText: PColor.light,
            duration: Duration(milliseconds: 2500),
            isDismissible: true,
            snackPosition: SnackPosition.BOTTOM
          );
      }
    );
    setAudioSource();
  }

  Widget playBackControlButton() {
    return StreamBuilder<PlayerState>(
      stream: player.playerStateStream, 
      builder:(context, snapshot) {
        final ProcessingState? processingState = snapshot.data?.processingState;
        final bool? playing = snapshot.data?.playing;
        if (processingState == ProcessingState.loading ||
          processingState == ProcessingState.buffering){
            return Container(
              margin: EdgeInsets.all(8.0),
              width: 45,
              height: 45,
              child: const CircularProgressIndicator(),
            );
          }else if(playing != true){
            return IconButton(
              tooltip: 'Play',
              onPressed: () async => player.play(), 
              icon: Icon(Icons.play_arrow_rounded,size: 45,)
            );
          }else if (processingState != ProcessingState.completed){
            return IconButton(
              tooltip: 'Pause',
              onPressed: () async => player.pause(), 
              icon: Icon(Icons.pause_rounded,size: 45,)
            );
          }else {
            return IconButton(
              tooltip: 'Replay',
              onPressed: () async => player.seek(Duration.zero), 
              icon: Icon(Icons.replay_rounded,size: 45,)
            );
          }
      },
    );
  }

  Widget progressBar(){
    return StreamBuilder<Duration?>(
      stream: player.positionStream, 
      builder: (context, snapshot) {
        return ProgressBar(
          onSeek: (duration) => player.seek(duration) ,
          progress: snapshot.data ?? Duration.zero, 
          buffered: player.bufferedPosition,
          total: player.duration ?? Duration.zero
        );
      },
    );
  }

  Widget controlButtons() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StreamBuilder(
          stream: player.speedStream, 
          builder: (context, snapshot) {
            return Row(
              children: [
                Icon(Icons.speed_rounded, size: 25,),
                Slider(
                  min: 1.0,
                  max: 2.0,
                  value: snapshot.data ?? 1.0, 
                  divisions: 5,
                  label: '${speed.value}',
                  onChanged: (value) async {
                    await player.setSpeed(value);
                    speed.value = value;
                  }
                )
              ],
            );
          },
        ),
        StreamBuilder(
          stream: player.volumeStream, 
          builder: (context, snapshot) {
            return Row(
              children: [
                Icon(volume.value == 0.0 ? Icons.volume_off_rounded : Icons.volume_up_rounded, size: 25,),
                Slider(
                  min: 0.0,
                  max: 4.0,
                  value: snapshot.data ?? 1.0, 
                  divisions: 4,
                  label: '${volume.value}',
                  onChanged: (value) async {
                    await player.setVolume(value);
                    volume.value = value;
                  }
                )
              ],
            );
          },
        )
      ],
    );
  }
}