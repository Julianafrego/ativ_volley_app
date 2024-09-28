import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TeamActionsWidget extends StatelessWidget {
  const TeamActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          // expanded para que ocupe o maximo de espaço possivel
          flex: 1,
          child: Container(
            color: Colors.blue,
            child: const Column(
              children: [],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.yellow,
            child: const Column(
              children: [],
            ),
          ),
        ),
      ],
    );
  }
}
