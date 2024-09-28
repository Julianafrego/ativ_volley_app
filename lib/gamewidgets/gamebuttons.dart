import '../pages.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class AddButtonTeam extends StatelessWidget {
  const AddButtonTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 7, right: 15),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: MyColors.blue1, // Define a cor de fundo
          shape: const CircleBorder(), // Mantém a forma circular
        ),
        onPressed: () {},
        child: const Text(
          '+',
          style: TextStyle(
            fontSize: 26,
            color: MyColors.branco,
          ),
        ),
      ),
    );
  }
}

class ReturnButton extends StatelessWidget {
  const ReturnButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        style: ButtonStyle(
          iconSize: MaterialStateProperty.all<double>(40.0),
          foregroundColor: MaterialStateProperty.all<Color>(MyColors.branco),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomepageWidget()),
          );
        },
        icon: const BackButton());
  }
}

class PlacarGeralButton extends StatelessWidget {
  const PlacarGeralButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: MyColors.branco,
        backgroundColor: MyColors.blue1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: MyColors.branco,
            width: 2,
          ),
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Placar Geral',
        style: TextStyle(
          fontSize: 30,
          fontFamily: 'Concert One',
        ),
      ),
    );
  }
}

class ConfigButton extends StatelessWidget {
  const ConfigButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        iconSize: MaterialStateProperty.all<double>(40.0),
        foregroundColor: MaterialStateProperty.all<Color>(MyColors.branco),
      ),
      onPressed: () {},
      icon: const Icon(Icons.settings),
    );
  }
}
