import 'package:flutter/material.dart';
import 'package:scan_plate/View/Screens/home_page.dart';

void main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plate Recognizer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(189, 213, 234, 1),
        ),
        scaffoldBackgroundColor: Color.fromRGBO(241, 245, 242, 100),
      ),
      home: const HomePage(),
    );
  }
}