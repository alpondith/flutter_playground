import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ElevatedButton.icon(
            onPressed: playSound,
            icon: Icon(Icons.play_arrow, size: 18),
            label: Text("Play"),
          ),
        ),
      ),
    );
  }

  void playSound() {
    AudioPlayer audioPlayer = AudioPlayer();
    audioPlayer.play("assets/beep.mp3", isLocal: true);
  }
}
