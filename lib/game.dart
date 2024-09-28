import 'package:flutter/material.dart';
import 'main.dart';

class TeamsNamewidget extends StatelessWidget {
  const TeamsNamewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Center(
          child: TeamNameWidget(teamName: 'Ziraldos', teamIdentifier: 'A'),
        )),
        Flexible(
            child: Center(
          child:
              TeamNameWidget(teamName: 'Autoconvidados', teamIdentifier: 'B'),
        )),
      ],
    );
  }
}

class TeamNameWidget extends StatelessWidget {
  final String teamName;
  final String teamIdentifier;
  const TeamNameWidget(
      {super.key, required this.teamName, required this.teamIdentifier});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            color: MyColors.blue4,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(teamIdentifier,
                style: const TextStyle(
                  fontSize: 25,
                  color: MyColors.blue1,
                  fontFamily: 'Concert One',
                )),
          ),
        ),
        Text(teamName,
            style: const TextStyle(
              fontSize: 20,
              color: MyColors.blue1,
              fontFamily: 'Concert One',
            )),
      ],
    );
  }
}

class PlacarWidget extends StatelessWidget {
  const PlacarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Flexible(
          child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: MyColors.laranja,
          border: Border.all(width: 2.0, color: MyColors.branco),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Center(
                child: Image.asset(
                  './assets/ball.png',
                  width: 130,
                  height: 130,
                ),
              ),
            ),
            const Flexible(
              child: Center(
                child: Text(
                  '12',
                  style: TextStyle(
                    fontSize: 60,
                    color: MyColors.branco, // Ou a cor desejada
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
      Flexible(
          child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: MyColors.laranja,
          border: Border.all(width: 2.0, color: MyColors.branco),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Center(
                child: Container(
                  width: 130,
                  height: 130,
                  child: const Text(''),
                ),
              ),
            ),
            const Flexible(
              child: Center(
                child: Text(
                  '12',
                  style: TextStyle(
                    fontSize: 60,
                    color: MyColors.branco, // Ou a cor desejada
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    ]);
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Tempo de jogo: ',
          style: TextStyle(
            fontSize: 20,
            color: MyColors.branco,
          ),
        ),
        const Text(
          "1:14'" "00''",
          style: TextStyle(
            fontSize: 20,
            color: MyColors.branco,
          ),
        ),
      ],
    );
  }
}
