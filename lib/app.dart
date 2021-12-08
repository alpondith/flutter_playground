import 'package:flutter/material.dart';

import 'custom_container.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SingleChildScrollView',
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            // scrollDirection: Axis.vertical,
            child: Column(
              children: [
                CustomContainer(
                  color: Colors.pink,
                  text: 'Hello',
                ),
                CustomContainer(
                  color: Colors.teal,
                  text: 'World',
                ),
                CustomContainer(
                  color: Colors.red,
                  text: 'hello world bangladesh ',
                ),
                CustomContainer(
                  color: Colors.purple,
                  text: 'hello world Nepal',
                ),
                CustomContainer(
                  color: Colors.indigo,
                  text: 'hello world Vhutan',
                ),
                CustomContainer(
                  color: Colors.pink,
                  text: 'hello world Parris',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
