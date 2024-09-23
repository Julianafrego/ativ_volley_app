import 'package:ativ_volley_app/main.dart';
import 'package:flutter/material.dart';

class TeamsContainer extends StatelessWidget {
  TeamsContainer({super.key});

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
      quarterTurns: 3,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        decoration: BoxDecoration(
          color: MyColors.blue3,
          border: Border.all(width: 2.0, color: Colors.white),
        ),
        child: const Text(
          'Times',
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
          TeamWidget(teamName: 'Sicranos'),
          TeamWidget(teamName: 'Autoconvidados'),
        ],
      ),
    );
  }
}

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
