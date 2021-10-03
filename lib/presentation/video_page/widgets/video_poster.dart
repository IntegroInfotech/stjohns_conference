import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

AudioCache audioCache = AudioCache(
  respectSilence: false,
  fixedPlayer: AudioPlayer(
    mode: PlayerMode.MEDIA_PLAYER,
    playerId: 'llsllslsl',
  ),
  duckAudio: true,
);

class VideoPoster extends StatelessWidget {
  void alertUser() {
    audioCache.play(
      "audios/bgm.mp3",
      isNotification: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    // alertUser();
    return Image.asset(
      'assets/images/banners/background_1.jpg',
      fit: BoxFit.contain,
    );
  }
}
