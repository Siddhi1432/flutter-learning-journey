import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Counter Value", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 12),
          Text(
            count.toString(),
            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(onPressed: decrement, child: const Text('-')),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: increment, child: const Text('+')),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: reset, child: const Text('Reset')),
            ],
          ),
        ],
      ),
    );
  }
}
