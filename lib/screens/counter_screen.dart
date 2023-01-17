import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize25 = const TextStyle(fontSize: 25);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Número de Clicks', style: fontSize25),
          Text('$counter', style: fontSize25),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => setState(() => counter--),
          ),
          FloatingActionButton(
            child: const Icon(Icons.restart_alt_sharp),
            onPressed: () => setState(() => counter = 0),
          ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => setState(() => counter++),
          ),
        ],
      ),
    );
  }
}
