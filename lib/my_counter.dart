import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$number",
            style: TextStyle(fontSize: 48),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                  print(number);
                },
                child: Text("+"),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (number > 0) {
                    setState(() {
                      number--;
                    });
                  }
                  print(number);
                },
                child: Text("-"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
