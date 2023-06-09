import 'package:flutter/material.dart';

class SayHello extends StatelessWidget {
  final String? msg;
  const SayHello({this.msg, super.key});

  @override
  Widget build(context) {
    return Text(
      msg!,
      style: const TextStyle(
        color: Colors.deepOrangeAccent,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
