import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(
      // will trigger a build- methods again to re-render the UI
      () {
        // inside of anonymous function we can add business logic
        currentDiceRoll = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize
          .min, // Заставляет Column или Row занимать ровно столько места, сколько нужно детям.
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),

        const SizedBox(height: 20),

        TextButton(
          onPressed: rollDice, // or use anonymous func instead () {}
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll the dice'),
        ),
      ],
    );
  }
}
