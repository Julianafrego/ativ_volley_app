import 'package:flutter/material.dart';
import '../main.dart';
import 'gamebuttons.dart';

class TeamActionsListAWidget extends StatelessWidget {
  const TeamActionsListAWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min, // Isso ajudará a evitar tamanho zero

      children: [
        TeamActionAWidget(
          actionName: 'Ace',
        ),
        TeamActionAWidget(
          actionName: 'Ataque',
        ),
        TeamActionAWidget(
          actionName: 'Bloqueio',
        ),
        TeamActionAWidget(
          actionName: 'Erro',
        ),
      ],
    );
  }
}

class TeamActionAWidget extends StatelessWidget {
  final String actionName;
  const TeamActionAWidget({super.key, required this.actionName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        children: [
          const AddButtonTeam(),
          Text(
            actionName,
            style: const TextStyle(
              fontSize: 20,
              color: MyColors.branco,
            ),
          )
        ],
      ),
    );
  }
}

class TeamActionsListBWidget extends StatelessWidget {
  const TeamActionsListBWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min, // Isso ajudará a evitar tamanho zero
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TeamActionBWidget(
          actionName: 'Ace',
        ),
        TeamActionBWidget(
          actionName: 'Ataque',
        ),
        TeamActionBWidget(
          actionName: 'Bloqueio',
        ),
        TeamActionBWidget(
          actionName: 'Erro',
        ),
      ],
    );
  }
}

class TeamActionBWidget extends StatelessWidget {
  final String actionName;
  const TeamActionBWidget({super.key, required this.actionName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            actionName,
            style: const TextStyle(
              fontSize: 20,
              color: MyColors.branco,
            ),
          ),
          const AddButtonTeam(),
        ],
      ),
    );
  }
}
