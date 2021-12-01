import 'package:flutter/material.dart';

class GreenSquare extends StatelessWidget {
  const GreenSquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      color: Colors.green,
    );
  }
}
