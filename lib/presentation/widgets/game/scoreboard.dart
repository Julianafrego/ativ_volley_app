
import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';



class Scoreboard extends StatefulWidget {
  final int pointsA;
  final int pointsB;

  const Scoreboard({super.key, required this.pointsA, required this.pointsB});

  @override
  State<Scoreboard> createState() => _ScoreboardState();
}

class _ScoreboardState extends State<Scoreboard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Container(
          height: 150,
          decoration: BoxDecoration(
            color: SystemColors.laranja,
            border: Border.all(width: 2.0, color: SystemColors.branco),
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
              Flexible(
                child: Center(
                  child: Text(
                    widget.pointsA.toString(),
                    style: const TextStyle(
                      fontSize: 60,
                      color: SystemColors.branco,
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
            color: SystemColors.laranja,
            border: Border.all(width: 2.0, color: SystemColors.branco),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Flexible(
                child: Center(
                  child: SizedBox(
                    width: 130,
                    height: 130,
                    child: Text(''),
                  ),
                ),
              ),
              Flexible(
                child: Center(
                  child: Text(
                    widget.pointsB.toString(),
                    style: const TextStyle(
                      fontSize: 60,
                      color: SystemColors.branco,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}