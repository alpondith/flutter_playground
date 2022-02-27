import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GermanyFlag(),
    );
  }
}

class GermanyFlag extends StatelessWidget {
  const GermanyFlag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 400,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 400,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 400,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
