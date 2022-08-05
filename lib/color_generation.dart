import 'dart:math';
import 'package:flutter/material.dart';

/// Color generation class.
class ColorGeneration {
  /// Maximum color value.
  static const max = 255;

  /// Randomizer.
  Random random = Random();

  /// Create random int from range.
  int randomInt(int max) {
    return random.nextInt(max);
  }

  /// Change color.
  Color changeColor() {
    final color = Color.fromRGBO(
      randomInt(max),
      randomInt(max),
      randomInt(max),
      1,
    );

    return color;
  }
}
