import 'package:flutter/material.dart';

import 'components/green_rectangle.dart';
import 'components/red_circle.dart';

class BDFlag extends StatelessWidget {
  const BDFlag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GreenRectangle(),
        RedCircle(),
      ],
    );
  }
}
