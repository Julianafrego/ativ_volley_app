import 'package:flutter/material.dart';
import 'package:ativ_volley_app/presentation/widgets/game/team_action.dart';


class TeamActionsListA extends StatelessWidget {
  final VoidCallback increasePointsA;

  const TeamActionsListA({super.key, required this.increasePointsA});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TeamActionAWidget(
          actionName: 'Ace',
          sumPoints: increasePointsA,
        ),
        TeamActionAWidget(
          actionName: 'Ataque',
          sumPoints: increasePointsA,
        ),
        TeamActionAWidget(
          actionName: 'Bloqueio',
          sumPoints: increasePointsA,
        ),
        TeamActionAWidget(
          actionName: 'Erro',
          sumPoints: increasePointsA,
        ),
      ],
    );
  }
}




class TeamActionsListB extends StatelessWidget {
  final VoidCallback increasePointsB;
  const TeamActionsListB({super.key, required this.increasePointsB});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TeamActionBWidget(
          actionName: 'Ace',
          sumPoints: increasePointsB,
        ),
        TeamActionBWidget(
          actionName: 'Ataque',
          sumPoints: increasePointsB,
        ),
        TeamActionBWidget(
          actionName: 'Bloqueio',
          sumPoints: increasePointsB,
        ),
        TeamActionBWidget(
          actionName: 'Erro',
          sumPoints: increasePointsB,
        ),
      ],
    );
  }
}
