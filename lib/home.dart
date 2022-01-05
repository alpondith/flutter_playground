import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = [
      'A',
      'B',
      'C',
      'D',
      'E',
    ];
    final List<int> colorCodes = [
      600,
      500,
      100,
      300,
      500,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          // scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int i) {
            return Container(
              margin: const EdgeInsets.all(10),
              height: 400,
              width: double.maxFinite,
              color: Colors.amber[colorCodes[i]],
              child: Center(child: Text('Entry ${entries[i]}')),
            );
          }),
    );
  }
}
