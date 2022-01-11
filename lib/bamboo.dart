import 'package:flutter/material.dart';

class Bamboo extends StatelessWidget {
  const Bamboo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 500,
          width: 20,
          color: Colors.black,
        ),
        Container(
          width: 150,
          height: 50,
          color: Colors.red,
        ),
      ],
    );
  }
}
