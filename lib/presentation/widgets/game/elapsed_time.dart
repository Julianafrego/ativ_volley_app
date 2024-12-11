import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';


class ElapsedTime extends StatelessWidget {
  final int seconds;
  const ElapsedTime({super.key, required this.seconds});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Tempo de jogo: ',
          style: TextStyle(
            fontSize: 20,
            color: SystemColors.branco,
          ),
        ),
        Text(
          formatedTime(seconds),
          style: const TextStyle(
            fontSize: 20,
            color: SystemColors.branco,
          ),
        ),
         Text(
          '’00’’',
          style: const TextStyle(
            fontSize: 20,
            color: SystemColors.branco,
          ),
        ),
      ],
    );
  }
  String formatedTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return "$minutes:${remainingSeconds.toString().padLeft(2, '0')}";
  }
}