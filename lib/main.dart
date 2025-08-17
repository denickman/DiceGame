import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

// define a custom instruction (function) in DART
// void - returned type
// main() function gets executed automatically

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          // backgroundColor: Color.fromARGB(255, 35, 124, 169),
        body: 
         GradientContainer(Colors.blueAccent, Colors.amberAccent), // GradientContainer
        // GradientContainer.purple()

        ),
    ),
  );
}

