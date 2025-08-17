import 'package:flutter/material.dart';

// define a custom instruction (function) in DART
// void - returned type
// main() function gets executed automatically

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          // backgroundColor: Color.fromARGB(255, 35, 124, 169),
        body: GradientContainer(), // GradientContainer
        ),
    ),
  );
}



class GradientContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepOrangeAccent,
                Colors.tealAccent,
                Colors.lightGreen
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
          ),
          child: const Center(
            child: Text(
              'FLUTTER & DART',
              style: TextStyle(
                color: Color.fromARGB(221, 255, 254, 254), 
                fontSize: 28.0,),
              ),
            ),
        );
  }
}
