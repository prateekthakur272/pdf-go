import 'package:flutter/material.dart';
import 'package:pdf_go/screen/home.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}
