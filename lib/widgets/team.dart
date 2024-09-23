import 'package:flutter/material.dart';
import '../main.dart';

class TeamWidget extends StatelessWidget {
  final String teamName; // string que receberá o nome do time
  final String teamNumPlayers; // string que receberá o número de jogadores
  const TeamWidget(
      {super.key, required this.teamName, required this.teamNumPlayers});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            teamName,
            style: const TextStyle(
              fontSize: 30,
              color: MyColors.yellow,
              fontFamily: 'Concert One',
            ),
          ),
          const SizedBox(width: 15),
          Text(
            teamNumPlayers,
            style: const TextStyle(
              height: 0.8,
              fontFamily: 'Concert One',
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: MyColors.blue1,
            ),
          ),
          const RotatedBox(
            quarterTurns: 3, // Rotaciona o texto para ficar na vertical
            child: Text(
              'Jogadores',
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.bold,
                color: MyColors.blue1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
