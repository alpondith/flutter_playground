import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = "Twinkle, twinkle, little star \nHow I wonder what you are \nUp above the world so high \nLike a diamond in the sky";

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
