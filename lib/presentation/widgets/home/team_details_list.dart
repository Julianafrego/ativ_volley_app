import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';
import 'package:ativ_volley_app/presentation/widgets/home/team_details.dart';

class TeamsContainer extends StatelessWidget {
  const TeamsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TeamsTitle(),
          TeamListWidget(),
        ])
      ],
    );
  }
}

class TeamsTitle extends StatelessWidget {
  const TeamsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3, // para rotacionar
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 5),
        decoration: BoxDecoration(
          color: SystemColors.blue3,
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
          TeamDetails(teamName: 'Sicranos', teamNumPlayers: '3'),
          TeamDetails(
            teamName: 'Autoconvidados',
            teamNumPlayers: '3',
          ),
          TeamDetails(
            teamName: 'Zilrados',
            teamNumPlayers: '5',
          ),
          TeamDetails(
            teamName: 'Sparings',
            teamNumPlayers: '4',
          ),
        ],
      ),
    );
  }
}
