import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';

class TeamAScoreboard extends StatelessWidget {
  final String teamName;
  final int teamScore;

  const TeamAScoreboard({
    super.key,
    required this.teamName,
    required this.teamScore,
  });

  @override
  Widget build(BuildContext context) {

    final Color scoreColor =
        teamScore == 25 ? SystemColors.blue1 : SystemColors.yellow;

    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            teamName,
            style: const TextStyle(
              fontSize: 24,
              color: SystemColors.branco,
            ),
          ),
        
        Text(
          teamScore.toString(),
          style: TextStyle(
            fontSize: 24,
            color: scoreColor,
          ),
        ),
      ],
    );
  }
}

class TeamBScoreboard extends StatelessWidget {
  final String teamName;
  final int teamScore;

  const TeamBScoreboard({
    super.key,
    required this.teamName,
    required this.teamScore,
  });

  @override
  Widget build(BuildContext context) {
    final Color scoreColor =
        teamScore == 25 ? SystemColors.blue1 : SystemColors.yellow;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
      children: [
        Text(
            teamScore.toString(),
            style: TextStyle(
              fontSize: 24,
              color: scoreColor,
            ),
          ),
        
        Text(
          teamName,
          style: const TextStyle(
            fontSize: 24,
            color: SystemColors.branco,
          ),
        ),
      ],
    );
  }
}
