import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

// import 'package:first_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


// Option #1 

class GradientContainer extends StatelessWidget {

// const GradientContainer({Key? key}) : super(key: key);
// const перед конструктором позволяет Flutter не пересоздавать виджет, если его параметры не изменились.

// 🔹 Когда можно не писать? - GradientContainer({key}): super(key: key);
// Если твой StatelessWidget или StatefulWidget:
// не принимает никаких параметров, кроме key,
// или ты вообще не используешь key,

  // first init
   const GradientContainer(this.color1, this.color2, {super.key});

  // second 'convinience' init (alternative constructor function)
  const GradientContainer.purple({super.key}) : color1 = Colors.deepPurple, color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
              begin: startAlignment,
              end: endAlignment, 
            ),
          ),
          child: Center( // Center = виджет, который центрирует своего ребёнка и по вертикали, и по горизонтали.
            child: DiceRoller()
          ),
        );
  }



}





// Option #2

/*

class GradientContainer extends StatelessWidget {

// const GradientContainer({Key? key}) : super(key: key);
// const перед конструктором позволяет Flutter не пересоздавать виджет, если его параметры не изменились.

// 🔹 Когда можно не писать? - GradientContainer({key}): super(key: key);
// Если твой StatelessWidget или StatefulWidget:
// не принимает никаких параметров, кроме key,
// или ты вообще не используешь key,
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment, 
            ),
          ),
          child: const Center(
            child: StyledText('Hello world'),
            ),
        );
  }
}

*/