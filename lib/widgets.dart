import 'package:flutter/material.dart';
import 'widgets/teamlist.dart';
import 'widgets/buttons.dart';
import 'widgets/cabecalho.dart';

class CabecalhoWidget extends StatelessWidget {
  const CabecalhoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const TopWidget(),
    );
  }
}

class TeamsContainer extends StatelessWidget {
  const TeamsContainer({super.key});

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

class InitialButtons extends StatelessWidget {
  const InitialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        JogoCasadoButton(),
        IniciarButton(),
      ],
    );
  }
}
