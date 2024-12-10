import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';


class TeamsName extends StatelessWidget {
  const TeamsName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Center(
          child: TeamName(teamName: 'Ziraldos', teamIdentifier: 'A'),
        )),
        Flexible(
            child: Center(
          child:
              TeamName(teamName: 'Autoconvidados', teamIdentifier: 'B'),
        )),
      ],
    );
  }
}




class TeamName extends StatelessWidget {
  final String teamName;
  final String teamIdentifier;
  const TeamName(
      {super.key, required this.teamName, required this.teamIdentifier});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            color: SystemColors.blue4,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(teamIdentifier,
                style: const TextStyle(
                  fontSize: 25,
                  color: SystemColors.blue1,
                  fontFamily: 'Concert One',
                )),
          ),
        ),
        Text(teamName,
            style: const TextStyle(
              fontSize: 20,
              color: SystemColors.blue1,
              fontFamily: 'Concert One',
            )),
      ],
    );
  }
}

