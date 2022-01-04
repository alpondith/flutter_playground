import 'package:flutter/material.dart';
// ignore: unused_import
import '../horizontal.dart';
import '../vertical.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: VerticalExample(),
    );
  }
}
