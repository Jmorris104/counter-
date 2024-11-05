import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0; // Initialize counter variable
  bool _isImageOne = true; // Track which image to display

  void _incrementCounter() {
    setState(() {
      _counter++; // Increment counter by 1
    });
  }

  void _toggleImage() {
    setState(() {
      _isImageOne = !_isImageOne; // Toggle image state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Current Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_counter', // Display counter value
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter, // Increment button
              child: const Text('Increment'),
            ),
            const SizedBox(height: 40),
            // Display an image based on _isImageOne's state
            Image.asset(
              _isImageOne ? 'assets/images/ok.jpg' : 'assets/images/thumbs.jpg',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleImage, // Toggle image button
              child: const Text('Toggle Image'),
            ),
          ],
        ),
      ),
    );
  }
}
