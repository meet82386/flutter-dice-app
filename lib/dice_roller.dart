import 'dart:math';
import 'package:flutter/material.dart';

var random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceOne = 1;
  var activeDiceTwo = 1;

  void rollDice() {
    setState(() {
      activeDiceOne = random.nextInt(6) + 1;
      activeDiceTwo = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/image/dice-${activeDiceOne}.png', width: 150),
              const SizedBox(
                width: 30,
              ),
              Image.asset('assets/image/dice-${activeDiceTwo}.png', width: 150),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 5, 214, 106),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            ),
            child: const Text('Roll Dice'),
          )
        ],
      ),

      // SayHello(
      //   msg: 'Hello World.',
      // ),
    );
  }
}
