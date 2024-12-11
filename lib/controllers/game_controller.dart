import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ativ_volley_app/presentation/widgets/game/victory_dialog.dart';

class GameController {
  int pointsA = 0;
  int pointsB = 0;
  int seconds = 0;
  bool isTimerRunning = false;
  late Timer _timer;
  

  String ballPosition = 'A';

  void startTimer(VoidCallback updateUI) {
    isTimerRunning = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      seconds++;
      updateUI();
    });
  }

  void stopTimer() {
    if (isTimerRunning) {
      _timer.cancel();
      isTimerRunning = false;
    }
  }

  void increasePointsA(VoidCallback updateUI, BuildContext context) {
    ballPosition = "A";
    pointsA++;
    updateUI();
    verificarVitoria(context, updateUI);
  }

  // Incrementa os pontos do Time B
  void increasePointsB(VoidCallback updateUI, BuildContext context) {
    ballPosition = "B";
    pointsB++;
    updateUI();
    verificarVitoria(context, updateUI);
  }

  // Reinicia o jogo
  void resetGame(VoidCallback updateUI) {
    pointsA = 0;
    pointsB = 0;
    seconds = 0;
    ballPosition = 'A';
    updateUI();
  }

  // Verifica se há vencedor
  void verificarVitoria(BuildContext context, VoidCallback updateUI) {
    if (pointsA >= 21 && pointsA - pointsB >= 2) {
      // Vitória do Time A
      VictoryDialog.showVictoryDialog(
        context,
        'Ziraldos',
        pointsA,
        pointsB,
        () => resetGame(updateUI),
      );
    } else if (pointsB >= 21 && pointsB - pointsA >= 2) {
      // Vitória do Time B
      VictoryDialog.showVictoryDialog(
        context,
        'Autoconvidados',
        pointsA,
        pointsB,
        () => resetGame(updateUI),
      );
    }
  }
}
