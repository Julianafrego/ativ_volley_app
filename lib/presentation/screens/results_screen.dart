import 'package:ativ_volley_app/presentation/widgets/results/results_footer.dart';
import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';
import 'package:ativ_volley_app/core/buttons/return_button.dart';
import 'package:ativ_volley_app/presentation/widgets/results/teams_scoreboard.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SystemColors.blue2,
        leading: const ReturnButton(),
        title: const Text(
          'Placar Geral',
          style: TextStyle(
            fontSize: 24,
            color: SystemColors.branco,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: SystemColors.blue2,
        ),
      //  padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(flex: 1, child: Container()),
                Flexible(
                  flex: 2,
                  child:
                   Container(
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
                      )),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
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
                  ),
                ),
                Flexible(flex: 1, child: Container()),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.09),
            const ResultsFooter(),
          ],
        ),
      ),
    );
  }
}
