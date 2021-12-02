import 'package:flutter/material.dart';

import 'bd_flag.dart';

class Flag extends StatelessWidget {
  const Flag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: BDFlag(),
        ),
      ),
    );
  }
}
