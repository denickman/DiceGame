import 'package:flutter/material.dart';

// define a custom instruction (function) in DART
// void - returned type
// main() function gets executed automatically 

void main() {
  // runApp() - provided by Flutter SDK. requires a widget-params (a combination of widgets)
  // that uses for UI building blocks
  // MaterialApp - start point / core widget

  // MaterialApp — это обёртка, которая:
  // задаёт корневой контекст для Material Design-виджетов;
  // управляет навигацией и маршрутами;
  // задаёт тему, локализацию и другие настройки.
  // Но сам по себе MaterialApp — пустой контейнер

  // У MaterialApp есть несколько способов определить, какой виджет отобразить первым:
  // Через home: (самый простой способ):
  // Через routes: и initialRoute::
  // Через onGenerateRoute: (гибкая логика навигации):
  runApp(MaterialApp(home: Text('Hello world!')));
}






























// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// // With Flutter, you create user interfaces by combining "widgets"
// // You'll learn all about them (and much more) throughout this course!
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // Every custom widget must have a build() method
//   // It tells Flutter, which widgets make up your custom widget
//   // Again: You'll learn all about that throughout the course!
//   @override
//   Widget build(BuildContext context) {
//     // Below, a bunch of built-in widgets are used (provided by Flutter)
//     // They will be explained in the next sections
//     // In this course, you will, of course, not just use them a lot but
//     // also learn about many other widgets!
//     return MaterialApp(
//       title: 'Flutter First App',
//       theme: ThemeData(useMaterial3: true),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Welcome to Flutter'),
//         ),
//         body: Container(
//           width: double.infinity,
//           padding: const EdgeInsets.all(12),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: const [
//               Text(
//                 'Flutter - The Complete Guide BEST EVER',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 16),
//               Text(
//                 'Learn Flutter step-by-step, from the ground up.',
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
