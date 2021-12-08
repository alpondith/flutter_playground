import 'package:flutter/material.dart';
import 'package:flutter_playground/colors.dart';

import 'expanded_tile.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            ExpandedTile(
              color: ThemeColors.PRIMARY,
              audio: "beep",
            ),
            ExpandedTile(
              color: Colors.green,
              audio: "sound",
            ),
            ExpandedTile(
              color: Colors.blue,
              audio: "beep",
            ),
          ],
        ),
      ),
    );
  }
}
