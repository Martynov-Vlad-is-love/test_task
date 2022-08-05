import 'dart:math';

import 'package:flutter/material.dart';

/// Home page of the application.
class HomePage extends StatefulWidget {
  /// Constructor of the home page.
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const max = 255;

  Color backgroundColorOne = Colors.white;
  Color backgroundColorTwo = Colors.black;

  Random random = Random();

  int randomInt(int max) {
    return random.nextInt(max);
  }

  void changeColor() {
    setState(() {
      backgroundColorOne = Color.fromRGBO(
        randomInt(max),
        randomInt(max),
        randomInt(max),
        1,
      );
      backgroundColorTwo = Color.fromRGBO(
        randomInt(max),
        randomInt(max),
        randomInt(max),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Test task')),
          backgroundColor: Colors.purple,
        ),
        body: SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [backgroundColorOne, backgroundColorTwo],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: TextButton(
              child: const Text(
                'Hey there',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                changeColor();
              },
            ),
          ),
        ),
      ),
    );
  }
}
