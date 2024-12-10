import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';
import 'package:ativ_volley_app/presentation/screens/results_screen.dart';


class VictoryDialog {
  static void showVictoryDialog(BuildContext context, String vencedor,
      int pointsA, int pointsB, Function resetGame) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;

        return Dialog(
          backgroundColor: const Color.fromARGB(158, 239, 249, 252),
          child: SizedBox(
            width: screenWidth * 0.8,
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
                Text(
                  '$vencedor',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 70, color: SystemColors.blue1),
                ),
                const Text('Venceu',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 24, color: SystemColors.blue1)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ResultsScreen(),
                          ),
                        );
                        resetGame();
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(SystemColors.blue1),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(SystemColors.branco),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                      child: const Text('Terminar'),
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(SystemColors.blue1),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(SystemColors.yellow),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                      onPressed: () {
                        resetGame();
                        Navigator.of(context).pop(); // Fecha o diálogo
                         // Reinicia o jogo
                      },
                      child: const Text('Novo Set'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

