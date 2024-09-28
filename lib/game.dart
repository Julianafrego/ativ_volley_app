import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ativ_volley_app/gamewidgets/teamactions.dart';

class gameWidget extends StatelessWidget {
  const gameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
    ]); // para deixar a tela na horizontal

    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.immersive); // remove a barra de notificações
    // colocando o app todo em tela cheia

    return Scaffold(
        body: Row(
      children: [
        Expanded(
          // expanded para que ocupe o maximo de espaço possivel
          flex: 1,
          child: Container(
            child: const Column(
              children: [
                teamActionsWidget(),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: const Column(
              children: [],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.yellow,
            child: const Column(
              children: [],
            ),
          ),
        ),
      ],
    ));
  }
}
