import 'package:flutter/material.dart';
import '../main.dart';


class TeamWidget extends StatelessWidget {
  final String teamName; // string que receberá o nome do time
  const TeamWidget({super.key, required this.teamName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          teamName,
          style: const TextStyle(
            fontSize: 40,
            color: MyColors.yellow,
            fontFamily: 'Concert One',
          ),
        ),
        const SizedBox(width: 15),
        const CountPlayersWidget(),
      ],
    );
  }
}

class CountPlayersWidget extends StatelessWidget {
  const CountPlayersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '4',
          style: TextStyle(
            height: 0.8,
            fontFamily: 'Concert One',
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: MyColors.blue1,
          ),
        ),
        RotatedBox(
          quarterTurns: 3, // Rotaciona ou -90 graus
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
    );
  }
}