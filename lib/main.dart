import 'package:flutter/material.dart';
import 'widgets/buttons.dart';

import 'widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyColors {
  static const Color blue1 = Color(0xFF2C4C8C);
  static const Color blue2 = Color(0xFF08ADC4);
  static const Color blue3 = Color(0xFF77D4DC);
  static const Color yellow = Color(0xFFF2C438);
  static const Color green = Color(0xFF7CBC74);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner "Debug"

      home: Scaffold(
        backgroundColor: MyColors.blue2,
        body: Center(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: CabecalhoWidget(),
            ),

            // add spacer, para termos espaços que se adaptem a diferentes
            // tamanhos de telas, e termos um app responsivel
            Spacer(flex: 2),
            
            TeamsContainer(), // esse será um componente centralizado

            Spacer(flex: 2),

            InitialButtons(),

            Spacer(flex: 5),
          ],
        )),
        floatingActionButton: AddButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        // botao ficará ao final da nossa tela
      ),
    );
  }
}
