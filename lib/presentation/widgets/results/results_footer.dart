import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';

class ResultsFooter extends StatelessWidget {
  const ResultsFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // Largura total da tela
      padding: const EdgeInsets.only(top: 9.0), // Ajuste de padding
      decoration: BoxDecoration(
        color: SystemColors.blue3,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: SystemColors.branco,
          width: 2,
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Espaçamento
            child: Text(
              'Sicranos: 10',
              style: TextStyle(fontSize: 24, color: SystemColors.branco),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Espaçamento
            child: Text(
              'Autoconvidados: 10',
              style: TextStyle(fontSize: 24, color: SystemColors.branco),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Espaçamento
            child: Text(
              'Ziraldos: 3',
              style: TextStyle(fontSize: 24, color: SystemColors.branco),
            ),
          ),
        ],
      ),
    );
  }
}
