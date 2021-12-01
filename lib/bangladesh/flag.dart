import 'package:flutter/material.dart';

import 'components/green_square.dart';
import 'components/red_circle.dart';

class Flag extends StatelessWidget {
  const Flag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              GreenSquare(),
              RedCircle(),
            ],
          ),
        ),
      ),
    );
  }
}
