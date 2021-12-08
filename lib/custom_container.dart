import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  Color color;
  String text;
  CustomContainer({
    this.color = Colors.white,
    this.text = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
