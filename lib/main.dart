import 'package:flutter/material.dart';
import 'package:first/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.purple(),
        // GradientContainer(
        //   [
        //     Colors.amber[100] as Color,
        //     Colors.green[100] as Color,
        //     Colors.amber[100] as Color
        //   ],
        // ),
      ),
    ),
  );
}
