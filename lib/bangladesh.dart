import 'package:flutter/material.dart';

class Bangladesh extends StatelessWidget {
  const Bangladesh({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 150,
          width: 300,
          color: Colors.green,
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
