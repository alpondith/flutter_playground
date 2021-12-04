import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ElevatedButton.icon(
            onPressed: () {
              audioPlayer.play(
                "assets/beep.mp3",
                isLocal: true,
              );
            },
            icon: Icon(Icons.play_arrow, size: 18),
            label: Text("Play"),
          ),
        ),
      ),
    );
  }
}
