import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';
import 'package:ativ_volley_app/presentation/widgets/results/teams_scoreboard.dart';


class Scoreboard extends StatelessWidget {
  const Scoreboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(flex: 1, child: Container()),
          const Flexible(
            flex: 4,
            child: ScoreboardTeamA(),
          ),
          const Flexible(
            flex: 4,
            child: ScoreboardTeamB(),
          ),
          Flexible(flex: 1, child: Container()),
        ],
      
    );
  }
}



class ScoreboardTeamA extends StatelessWidget {
  const ScoreboardTeamA({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                      height: MediaQuery.of(context).size.height * 0.56,
                      decoration: BoxDecoration(
                        color: SystemColors.laranja,
                        border:
                            Border.all(width: 2.0, color: SystemColors.branco),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Center(
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: SystemColors.blue4,
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  'A',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: SystemColors.blue1,
                                  ),
                                ),
                              ),
                            ),
                            const TeamsAScoreboard(),
                          ],
                        ),
                      ));
  }
}



class ScoreboardTeamB extends StatelessWidget {
  const ScoreboardTeamB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: MediaQuery.of(context).size.height * 0.56,
                    decoration: BoxDecoration(
                      color: SystemColors.laranja,
                      border:
                          Border.all(width: 2.0, color: SystemColors.branco),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: const BoxDecoration(
                                      color: SystemColors.blue4,
                                      shape: BoxShape.circle,
                                    ),
                                    alignment: Alignment.center,
                                    child: const Text(
                                      'B',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: SystemColors.blue1,
                                      ),
                                    ),
                                  ),
                                ),
                                const TeamsBScoreboard(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
  }
}



