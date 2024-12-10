import 'package:flutter/material.dart';
import 'package:ativ_volley_app/presentation/widgets/results/items_scoreboard.dart';

class TeamsAScoreboard extends StatelessWidget {
  const TeamsAScoreboard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = (MediaQuery.of(context).size.width * 0.02);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TeamAScoreboard(teamName: 'Ziraldos', teamScore: 25),
          TeamAScoreboard(teamName: 'Ziraldos', teamScore: 15),
          TeamAScoreboard(teamName: 'Sparrings', teamScore: 10),
          TeamAScoreboard(teamName: 'Sparrings', teamScore: 25),
        ],
      ),
    );
  }
}

class TeamsBScoreboard extends StatelessWidget {
  const TeamsBScoreboard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = (MediaQuery.of(context).size.width * 0.02);

    return Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TeamBScoreboard(teamName: 'Sparrings', teamScore: 10),
            TeamBScoreboard(teamName: 'Sicranos', teamScore: 10),
            TeamBScoreboard(teamName: 'AutoConvidados', teamScore: 25),
            TeamBScoreboard(teamName: 'autoconvidados', teamScore: 10),
          ],
        ));
  }
}
