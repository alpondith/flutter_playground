import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SoundSpeaker extends StatelessWidget {
  final Color color;
  final String audio;
  final String title;
  const SoundSpeaker({
    Key? key,
    this.color = Colors.white,
    required this.audio,
    this.title = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          AudioPlayer().play(audio, isLocal: true);
        },
        child: Container(
          color: color,
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
