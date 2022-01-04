import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_couter/counter_state.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${context.watch<CounterState>().count}',
            style: const TextStyle(
              fontSize: 48,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<CounterState>().increment();
                },
                child: const Text("+"),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterState>().decrement();
                },
                child: const Text("-"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
