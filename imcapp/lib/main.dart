import 'package:flutter/material.dart';
import 'screens/input.dart';

void main() {
  runApp(const IMCApp());
}

class IMCApp extends StatelessWidget {
  const IMCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de IMC',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const InputScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
