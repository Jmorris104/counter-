import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  int counter = 0; // Counter value for Task 1
  bool isFirstImage = true; // Boolean to track image state for Task 2

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void toggleImage() {
    setState(() {
      isFirstImage = !isFirstImage;
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
            // Task 1: Counter
            Text(
              'Counter: $counter',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: incrementCounter,
              child: Text('Increment'),
            ),
            SizedBox(height: 40),

            // Task 2: Image Toggle
            Image.asset(
              isFirstImage
                  ? 'assets/images/moon.jpg' 
                  : 'assets/images/sun.jpg', 
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
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

