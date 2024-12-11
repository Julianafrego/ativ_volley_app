import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/buttons/add_button.dart';
import 'package:ativ_volley_app/core/system_colors.dart';

class TeamActionAWidget extends StatelessWidget {
  final String actionName;
  final VoidCallback sumPoints;
  const TeamActionAWidget(
      {super.key, required this.actionName, required this.sumPoints});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        children: [
          AddButton(
            onPressed: sumPoints,
            heroTag: false,
          ),
          Text(
            actionName,
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 43, 108, 119),
            ),
          )
        ],
      ),
    );
  }
}



class TeamActionBWidget extends StatelessWidget {
  final String actionName;
  final VoidCallback sumPoints;
  const TeamActionBWidget(
      {super.key, required this.sumPoints, required this.actionName});

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
              color: SystemColors.branco,
            ),
          ),
          AddButton(
            onPressed: sumPoints,
            heroTag: false,
          ),
        ],
      ),
    );
  }
}
