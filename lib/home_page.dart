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
  static const min = 0;
  static const max = 255;

  Color backgroundColorOne = Colors.white;
  Color backgroundColorTwo = Colors.black;

  Random random = Random();

  int randomInt(int min, int max) {
    return min - random.nextInt(max - min);
  }

  void changeColor(int start, int end) {
    setState(() {
      backgroundColorOne = Color.fromRGBO(
        randomInt(start, end),
        randomInt(start, end),
        randomInt(start, end),
        1,
      );
      backgroundColorTwo = Color.fromRGBO(
        randomInt(start, end),
        randomInt(start, end),
        randomInt(start, end),
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
                    fontWeight: FontWeight.w700,),
              ),
              onPressed: () {
                changeColor(min, max);
              },
            ),
          ),
        ),
      ),
    );
  }
}
