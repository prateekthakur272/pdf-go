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
          cardColor: Colors.white,
          cardTheme: const CardTheme(
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                side: BorderSide(color: Colors.grey)),
            elevation: 0,
          ),
          primarySwatch: Colors.red,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.black))),
      darkTheme: ThemeData(
          canvasColor: Colors.grey.shade900,
          cardColor: Colors.grey.shade900,
          cardTheme: const CardTheme(
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                side: BorderSide(color: Colors.grey)),
            elevation: 0,
          ),
          textTheme: const TextTheme(
              bodySmall: TextStyle(color: Colors.white),
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white),
              displaySmall: TextStyle(color: Colors.white),
              displayMedium: TextStyle(color: Colors.white),
              displayLarge: TextStyle(color: Colors.white)),
          primarySwatch: Colors.red,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black))),
    );
  }
}
