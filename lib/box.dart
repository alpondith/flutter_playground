import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({
    Key? key,
    this.color = Colors.white,
    required this.number,
  }) : super(key: key);

  final Color color;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      // color: color,
      child: Center(
        child: Text(
          '$number',
          style: TextStyle(fontSize: 50),
        ),
      ),
      // circular box
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ],
      ),
    );
  }
}
