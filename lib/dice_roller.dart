import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {

  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

    var activeDiceImage = 'assets/images/dice-1.png';

   void rollDice() {
    setState( // will trigger a build- methods again to re-render the UI
      () {
        // inside of anonymous function we can add business logic 
         activeDiceImage = 'assets/images/dice-2.png';
      }
    );
  }

  @override 
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min, // Заставляет Column или Row занимать ровно столько места, сколько нужно детям.
              children: [

              Image.asset(
                activeDiceImage, 
                width: 200
                ),

              const SizedBox(height: 20),

              TextButton(
                onPressed: rollDice,  // or use anonymous func instead () {}
                style: TextButton.styleFrom(
                 // padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28
                    ),
                  ),
                   child: const Text('Roll the dice'),
              )
            ]
            );
  }
} 