import 'package:flutter/material.dart';

import 'box.dart';

class VerticalExample extends StatelessWidget {
  const VerticalExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              // spacing: 20,
              // runSpacing: 20,
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
