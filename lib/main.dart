import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // asstet image example
              Image.asset('assets/images/image1.jpg'),
              Image.asset('assets/images/image2.jpeg'),
              // network image example
              Image.network(
                  'https://images.unsplash.com/photo-1499428665502-503f6c608263?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
              // asstet image example
              const Image(
                image: AssetImage('assets/images/image2.jpeg'),
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              // display image example
              Container(
                width: double.infinity,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/image2.jpeg'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
