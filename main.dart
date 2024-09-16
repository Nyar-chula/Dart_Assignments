import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgSomo App',
      theme: ThemeData(
        primarySwatch:Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AgSomo App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Welcome message
            const Text(
              'Karibu to AgSomo, bridge your gap!',
              style: TextStyle(fontSize: 54, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30), // Spacing between widgets
            // ElevatedButton
            ElevatedButton(
              onPressed: () {
                if (kDebugMode) {
                  print('Button pressed!');
                }
              },
              child: const Text('Click Here'),
            ),
            const SizedBox(height: 30), // Spacing between widgets
            // Image from the internet
            Image.network(
              'https://tinyurl.com/bdfd544u',
              height: 400,
              width: 450,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

