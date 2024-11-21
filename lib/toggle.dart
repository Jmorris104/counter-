import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterAndImageToggleScreen(),
    );
  }
}

class CounterAndImageToggleScreen extends StatefulWidget {
  @override
  _CounterAndImageToggleScreenState createState() =>
      _CounterAndImageToggleScreenState();
}

class _CounterAndImageToggleScreenState
    extends State<CounterAndImageToggleScreen> {
  int counter = 0;
  bool isFirstImage = true;

  void toggleImage() {
    setState(() {
      isFirstImage = !isFirstImage;
    });
  }

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter & Image Toggle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Counter
            Text(
              'Counter: $counter',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: incrementCounter,
              child: Text('Increment Counter'),
            ),
            SizedBox(height: 20),

            // Image
            Image.asset(
              isFirstImage
                  ? 'assets/images/image1.png' // Replace with your first image
                  : 'assets/images/image2.png', // Replace with your second image
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            ElevatedButton(
              onPressed: toggleImage,
              child: Text('Toggle Image'),
            ),
          ],
        ),
      ),
    );
  }
}
