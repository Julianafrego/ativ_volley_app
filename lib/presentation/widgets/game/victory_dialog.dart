import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';
import 'package:ativ_volley_app/presentation/screens/results_screen.dart';
import 'package:ativ_volley_app/core/buttons/minor_standard_button.dart';

class VictoryDialog {
  static void showVictoryDialog(BuildContext context, String vencedor,
      int pointsA, int pointsB, Function resetGame) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;

        return Dialog(
          backgroundColor: const Color.fromARGB(158, 170, 246, 248),
          child: SizedBox(
            width: screenWidth * 0.7,
            height: screenHeight * 0.7,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'FIM DE SET',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: SystemColors.blue1),
                ),
                const SizedBox(height: 20),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Text(
                      '$vencedor',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 70, color: SystemColors.blue1),
                    ),
                    const Positioned(
                      right: 0,
                      top: 73,
                      child: Text('Venceu',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 24, color: SystemColors.blue1)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MinorStandardButton(
                        text: 'Terminar',
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ResultsScreen()),
                          );
                        },
                      ),
                      const SizedBox(width: 5),
                      MinorStandardButton(
                        text: 'Novo Set',
                        onPressed: () {
                        resetGame();
                        Navigator.of(context).pop(); // Fecha o diálogo
                         // Reinicia o jogo
                      },
                      color: ButtonColor.yellowText),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
