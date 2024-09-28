import 'package:flutter/material.dart';
import '../main.dart';
import 'team.dart';


class TeamsTitle extends StatelessWidget {
  const TeamsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3, // para rotacionar
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 5),
        decoration: BoxDecoration(
          color: MyColors.blue3,
          border: Border.all(width: 2.0, color: Colors.white),
        ),
        child: const Text(
          'TIMES',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontFamily: 'Concert One',
          ),
        ),
      ),
    );
  }
}


class TeamListWidget extends StatelessWidget {
  const TeamListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TeamWidget(teamName: 'Sicranos', teamNumPlayers: '3'),
          TeamWidget(
            teamName: 'Autoconvidados',
            teamNumPlayers: '3',
          ),
          TeamWidget(
            teamName: 'Zilrados',
            teamNumPlayers: '5',
          ),
          TeamWidget(
            teamName: 'Sparings',
            teamNumPlayers: '4',
          ),
        ],
      ),
    );
  }
}
