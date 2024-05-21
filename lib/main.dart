import 'package:flutter/material.dart';
import 'package:habbit_tracker_next_page/widget_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen.shade300,
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.0),
          child: WidgetTest(),
        ),
      ),
    );
  }
}
