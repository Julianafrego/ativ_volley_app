import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/buttons/simple_text_button.dart';
import 'package:ativ_volley_app/core/buttons/standard_button.dart';
import 'package:ativ_volley_app/presentation/screens/game_screen.dart';

class InitialButtons extends StatelessWidget {
  const InitialButtons({super.key});

 void goGameScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const GameScreen()),
  );
 }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SimpleTextButton(
          text: 'Jogo Casado',
        ),
        StandardButton(
          text: 'Iniciar', onPressed: () => goGameScreen(context),
        
        ),
      ],
    );
  }
}

