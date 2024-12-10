import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ativ_volley_app/core/buttons/return_button.dart';
import 'package:ativ_volley_app/presentation/widgets/game/team_actions_list.dart';
import 'package:ativ_volley_app/core/system_colors.dart';
import 'package:ativ_volley_app/controllers/game_controller.dart';
import 'package:ativ_volley_app/presentation/widgets/game/scoreboard.dart';
import 'package:ativ_volley_app/presentation/widgets/game/elapsed_time.dart';
import 'package:ativ_volley_app/core/buttons/config_button.dart';
import 'package:ativ_volley_app/core/buttons/standard_button.dart';
import 'package:ativ_volley_app/presentation/widgets/game/teams_name.dart';
import 'package:ativ_volley_app/presentation/screens/results_screen.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  GameScreenState createState() => GameScreenState();
}

class GameScreenState extends State<GameScreen> {
  final GameController _controller = GameController();

  String vencedor = '';
 void resetGame() {
    _controller.resetGame(() {
      setState(() {}); // Atualiza a interface do usuário
    });
  }
  
  @override
  void initState() {
    super.initState();
    _controller.startTimer(() => setState(() {}));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
    ]); // Define a orientação para landscape

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersive,
    ); // Remove a barra de notificações para modo tela cheia
  }

  @override
  void dispose() {
    // Restaurar as configurações ao sair do jogo
    _controller.stopTimer(); // para o temporizador quando sair da tela

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  // Formatar o tempo para mostrar como "mm:ss"
  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return "$minutes:${remainingSeconds.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: SystemColors.blue2,
        fontFamily: 'Concert One',
      ),
      home: Scaffold(
        backgroundColor: SystemColors.blue2,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReturnButton(),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height *
                            0.10), // 10% da altura da tela
                    child: TeamActionsListA(
                      increasePointsA: () {
                        _controller.increasePointsA(
                            () => setState(() {}), context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TeamsName(),
                      Scoreboard(
                        pointsA: _controller.pointsA,
                        pointsB: _controller.pointsB,
                      ),
                      ElapsedTime(
                        seconds: _controller.seconds,
                      ),
                      StandardButton(
                        text: 'Placar Geral',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                 const ResultsScreen(), 
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const ConfigButton(),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height *
                              0.10), // 10% da altura da tela),
                      child: TeamActionsListB(
                        increasePointsB: () {
                          _controller.increasePointsB(
                              () => setState(() {}), context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
