import 'package:first/dice_roller.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color>? colors;
  const GradientContainer({this.colors, super.key});

  const GradientContainer.purple({super.key})
      : colors = const [Colors.purple, Colors.indigoAccent];

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors!,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
