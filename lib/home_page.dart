import 'package:flutter/material.dart';
import 'package:test_task/color_generation.dart';

/// Home page of the application.
class HomePage extends StatefulWidget {
  /// Constructor of the home page.
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColorOne = Colors.white;
  Color backgroundColorTwo = Colors.black;

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
                setState(() {
                  backgroundColorOne = ColorGeneration().changeColor();
                  backgroundColorTwo = ColorGeneration().changeColor();
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
