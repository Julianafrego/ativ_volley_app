import 'package:flutter/material.dart';
import 'homepagewidgets/buttons.dart';

import 'widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyColors {
  static const Color blue1 = Color(0xff2B4A8E);
  static const Color blue2 = Color(0xFF08ADC3);
  static const Color blue3 = Color(0xFF77D4DC);
  static const Color green = Color(0xFF7CBC74);
  static const Color yellow = Color(0xFFF2C438);
  static const Color laranja = Color(0xffF77859);
  static const Color branco = Color(0xffC2F2F8);
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
