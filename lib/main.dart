import 'package:flutter/material.dart';
import 'package:frontend/screens/screen1/screen1.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: InitialScreen());
  }
}
