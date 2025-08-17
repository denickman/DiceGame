import 'package:flutter/material.dart';
import 'dart:math';

/*
Иммутабельность конфигурации. 
 В Flutter сами виджеты — иммутабельные объекты конфигурации.
 Изменяемые данные хранятся не в виджете, а в его состоянии (State). 
 Поэтому динамическая часть логики должна жить в State — обычно это отдельный виджет типа DiceRoller.

Упрощение повторного использования. 
DiceRoller можно теперь вставлять куда угодно — это самодостаточный компонент со своим состоянием.
Производительность и читаемость. 
Меньше пересборок, меньше взаимных зависимостей, проще понимать, что и почему обновляется.
*/

final randomizer = Random();

class DiceRoller extends StatefulWidget {

  /*
    У каждого StatefulWidget Flutter обязательно спрашивает: «Какое у тебя состояние?»
    Для этого у него есть метод createState().
    Мы возвращаем _DiceRollerState — вспомогательный объект, 
    где будут храниться изменяемые данные (currentDiceRoll) и логика (rollDice()).

    Flutter создаёт объект DiceRoller.
    Вызывает у него createState().
    Получает _DiceRollerState.
    Дальше работает уже в основном со State, а DiceRoller — как оболочка-конфигурация.

    Ты пишешь DiceRoller() внутри GradientContainer.
    Flutter создаёт объект DiceRoller (StatefulWidget).
    У него вызывается createState() → создаётся _DiceRollerState.
    _DiceRollerState.build() строит Column с картинкой и кнопкой.
    При нажатии на кнопку setState() меняет currentDiceRoll и снова вызывает build().
    Но сам DiceRoller (StatefulWidget) при этом не пересоздаётся — он остаётся тем же объектом-конфигурацией.
  */
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  /*
    Жизненный цикл State.
    initState() (если бы ты его переопределил) — единожды при маунте;
    build() — каждый раз, когда нужно отрисовать UI;
    setState() — сообщает фреймворку: «мои данные изменились, перерисуй меня» → снова build();
    dispose() — когда виджет удаляют из дерева (освободить ресурсы).
  */
  var currentDiceRoll = 2;

  void rollDice() {
    setState(
      // setState ставит флаг «нужно перестроить» → фреймворк вызывает build(), 
      // и в Image.asset подставляется новый путь 'assets/images/dice-$currentDiceRoll.png'.
      () {
        // inside of anonymous function we can add business logic
        currentDiceRoll = randomizer.nextInt(6) + 1;
      },
    );
  }

/*
   задача State — описать UI для текущего состояния. 
   Метод build() конструирует (каждый раз заново) дерево виджетов, например Column(...). 
   Но сам _DiceRollerState не вставляется в дерево — вставляются то, что он вернул из build().
*/
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
