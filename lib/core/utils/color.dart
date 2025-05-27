import 'dart:math';
import 'package:flutter/material.dart';

final Random _random = Random();

Color getRandomColor() {
  return Color.fromARGB(
    255,
    _random.nextInt(256),
    _random.nextInt(256),
    _random.nextInt(256),
  );
}
