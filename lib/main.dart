import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Counter {
  int value = 0;

  void increment() {
    value += 1;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Text(
          '${counter.value}',
          style: const TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter.increment();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}