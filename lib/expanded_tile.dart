import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ExpandedTile extends StatelessWidget {
  final Color color;
  final String audio;
  const ExpandedTile({
    Key? key,
    required this.color,
    required this.audio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          AudioPlayer().play("assets/$audio.mp3", isLocal: true);
        },
        child: Container(
          color: color,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
