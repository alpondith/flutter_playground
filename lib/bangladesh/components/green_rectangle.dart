import 'package:flutter/material.dart';

class GreenRectangle extends StatelessWidget {
  const GreenRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      color: Colors.green,
    );
  }
}
