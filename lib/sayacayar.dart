import 'dart:math';

import 'package:flutter/material.dart';

class Common {
  static final List<Color> list = [
    Colors.black,
    Colors.yellow,
    Colors.pink,
    Colors.blue,
    Colors.purple,
    Colors.deepOrange,
  ];

  static List<List> combo = [];

  static int getRandomNumber({required int min, required int max}) {
    if (min == max) {
      return min;
    }

    Random random = Random();
    return min + random.nextInt(max - min);
  }

  static Color getRandomColor() {
    return list[Common.getRandomNumber(min: 0, max: list.length)];
  }
}
