import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';
import 'package:ativ_volley_app/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner "Debug"
      theme: ThemeData(
        fontFamily: 'Concert One',
        dialogBackgroundColor: SystemColors.blue2,
      ),
      home: const Scaffold(
        backgroundColor: SystemColors.blue2,
        body: HomeScreen(),
        // botao ficará ao final da nossa tela
      ),
    );
  }
}
