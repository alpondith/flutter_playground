import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.pink,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: 200,
              width: double.infinity,
              child: Center(
                child: Text(
                  'a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
                // shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 10,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
