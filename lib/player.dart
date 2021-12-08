import 'package:flutter/material.dart';

import 'sound_speaker.dart';
import 'utils/colors.dart';
import 'utils/sounds.dart';

class Player extends StatelessWidget {
  const Player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sound Player',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            SoundSpeaker(
              color: ThemeColors.COLOR1,
              audio: SoundManager.SOUND1,
              title: "Sound 1",
            ),
            SoundSpeaker(
              color: ThemeColors.COLOR2,
              audio: SoundManager.SOUND2,
              title: "Sound 2",
            ),
            SoundSpeaker(
              color: ThemeColors.COLOR3,
              audio: SoundManager.SOUND3,
              title: "Sound 3",
            ),
            SoundSpeaker(
              color: ThemeColors.COLOR4,
              audio: SoundManager.SOUND4,
              title: "Sound 4",
            ),
            SoundSpeaker(
              color: ThemeColors.COLOR5,
              audio: SoundManager.SOUND5,
              title: "Sound 5",
            ),
            SoundSpeaker(
              color: ThemeColors.COLOR6,
              audio: SoundManager.SOUND6,
              title: "Sound 6",
            ),
          ],
        ),
      ),
    );
  }
}
