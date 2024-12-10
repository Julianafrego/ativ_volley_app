import 'package:ativ_volley_app/presentation/widgets/results/results_footer.dart';
import 'package:ativ_volley_app/presentation/widgets/results/scoreboard.dart';
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
    double screenHeight = (MediaQuery.of(context).size.height * 0.16);

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
                Flexible(
                    flex: 2,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: screenHeight),
                          const Icon(Icons.bar_chart,
                              size: 37, color: Colors.white),
                          const Icon(Icons.bar_chart,
                              size: 37, color: Colors.white),
                          const Icon(Icons.bar_chart,
                              size: 37, color: Colors.white),
                          const Icon(Icons.bar_chart,
                              size: 37, color: Colors.white),
                        ],
                      ),
                    )),
                const Flexible(
                  flex: 8,
                  child: Scoreboard(),
                ),
                Flexible(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: screenHeight),
                          const Text(
                            '0:24’90’’',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            '0:14’23’’',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            '0:35’04’’',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            '0:11’29’’',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )),
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
