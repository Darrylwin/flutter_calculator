import 'package:flutter/material.dart';

import 'views/calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
          ),
      home: Calculator(),
    );
  }
}
