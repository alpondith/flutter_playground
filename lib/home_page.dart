import 'package:flutter/material.dart';

import 'bamboo.dart';
import 'bangladesh.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Bangladesh Flag"),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.amber,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Bamboo(),
                  Container(
                    width: 430,
                    height: 170,
                    child: Bangladesh(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
