import 'package:flutter/material.dart';
import 'pages.dart';

void main() {
  runApp(const MyApp());
}

class MyColors {
  static const Color blue1 = Color(0xff2B4A8E);
  static const Color blue2 = Color(0xFF08ADC3);
  static const Color blue3 = Color(0xFF77D4DC);
  static const Color blue4 = Color(0xffC2F2F8);
  static const Color green = Color(0xFF7CBC74);
  static const Color yellow = Color(0xFFF2C438);
  static const Color laranja = Color(0xffF77859);
  static const Color branco = Color.fromARGB(255, 220, 250, 255);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner "Debug"
      theme: ThemeData(
        fontFamily: 'Concert One',
        dialogBackgroundColor: MyColors.blue2,
      ),
      home: const Scaffold(
        backgroundColor: MyColors.blue2,
        body: HomepageWidget(),
        // botao ficará ao final da nossa tela
      ),
    );
  }
}
