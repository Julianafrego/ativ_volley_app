import 'game.dart';

import 'homepagewidgets/buttons.dart';
import 'widgets.dart';
import 'main.dart';
import 'gamewidgets/teamsactions.dart';
import 'gamewidgets/gamebuttons.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({super.key});

  @override
  HomepageWidgetState createState() => HomepageWidgetState();
}

class HomepageWidgetState extends State<HomepageWidget> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]); // Define a orientação para portrait

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersive,
    ); // Remove a barra de notificações para modo tela cheia
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.blue2,
        fontFamily: 'Concert One', // Defina a cor de fundo desejada aqui
      ),
      home: const Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: CabecalhoWidget(),
              ),

              // add spacer, para termos espaços que se adaptem a diferentes
              // tamanhos de telas, e termos um app responsivo
              Spacer(flex: 2),

              TeamsContainer(), // esse será um componente centralizado

              Spacer(flex: 2),

              InitialButtons(),

              Spacer(flex: 5),
            ],
          ),
        ),
        floatingActionButton: AddButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}

class GameWidget extends StatefulWidget {
  const GameWidget({super.key});

  @override
  GameWidgetState createState() => GameWidgetState();
}

class GameWidgetState extends State<GameWidget> {
  @override
  void initState() {
    super.initState();
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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.blue2,
        fontFamily: 'Concert One', // Defina a cor de fundo desejada aqui
      ),
      home: Scaffold(
        backgroundColor: MyColors.blue2,
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
                            0.10), // 10% da altura da tela),
                    child: const TeamActionsListAWidget(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TeamsNamewidget(),
                      PlacarWidget(),
                      TimeWidget(),
                      PlacarGeralButton(),
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
                      child: const TeamActionsListBWidget(),
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
