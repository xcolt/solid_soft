import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            setState(() {
              backgroundColor = Color.fromRGBO(
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                  1
              );
            });
          },
          child: Container(
            color: backgroundColor,
            child: const Center(
              child: Text(
                'Hello there',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}