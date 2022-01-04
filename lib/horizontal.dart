import 'package:flutter/material.dart';

import 'box.dart';

class HorizontalExample extends StatelessWidget {
  const HorizontalExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              direction: Axis.vertical,
              children: const [
                Box(
                  color: Colors.red,
                ),
                Box(
                  color: Colors.black,
                ),
                Box(
                  color: Colors.blue,
                ),
                Box(
                  color: Colors.green,
                ),
                Box(
                  color: Colors.yellow,
                ),
                Box(
                  color: Colors.red,
                ),
                Box(
                  color: Colors.black,
                ),
                Box(
                  color: Colors.blue,
                ),
                Box(
                  color: Colors.green,
                ),
                Box(
                  color: Colors.yellow,
                ),
                Box(
                  color: Colors.red,
                ),
                Box(
                  color: Colors.black,
                ),
                Box(
                  color: Colors.blue,
                ),
                Box(
                  color: Colors.green,
                ),
                Box(
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
