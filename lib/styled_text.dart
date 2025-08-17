import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
// У StatelessWidget нет состояния, поэтому все его поля обычно final.
  final String text;

  // если ты создаёшь StyledText с compile-time значениями, Flutter может пересоздавать его реже (оптимизация).
  const StyledText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(221, 255, 254, 254),
        fontSize: 28.0,
      ),
    );
  }
}
