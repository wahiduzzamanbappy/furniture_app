import 'package:flutter/material.dart';

import 'UI/home.dart';

void main() {
  runApp(const FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 121, 147, 174),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
          ),
        ),
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 121, 147, 174),
          size: 41,

        ),
      ),
      title: 'Furniture App',
      home: const Home(),
    );
  }
}
