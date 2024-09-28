import 'package:flutter/material.dart';
import '../main.dart';
import 'package:ativ_volley_app/game.dart';

class JogoCasadoButton extends StatelessWidget {
  const JogoCasadoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(10),
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        onPressed: () {},
        child: const Text(
          'Jogo Casado',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Concert One',
          ),
        ),
      ),
    );
  }
}

class IniciarButton extends StatelessWidget {
  const IniciarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(10),
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(MyColors.blue1),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Define o raio da borda
              side: const BorderSide(
                  color: Colors.white,
                  width: 2), // Borda branca com largura de 2
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const gameWidget()),
          );
        },
        child: const Text(
          'Iniciar',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Concert One',
          ),
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: () {},
      backgroundColor: MyColors.blue1,
      child: const Text(
        '+',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontFamily: 'Concert One',
        ),
      ),
    );
  }
}
