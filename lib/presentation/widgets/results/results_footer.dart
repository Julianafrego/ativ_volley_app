import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';

class ResultsFooter extends StatelessWidget {
  const ResultsFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, 
      padding: const EdgeInsets.only(top: 9.0), 
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
            padding: EdgeInsets.symmetric(horizontal: 16.0), 
            child: 
            Row ( children: [
                Text(
              'Sicranos: ',
              style: TextStyle(fontSize: 24, color: SystemColors.branco),
            ),
             Text(
              '10',
              style: TextStyle(fontSize: 24, color: SystemColors.blue1),
            ),
            ],),
           
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), 
            child:  Row ( children: [
                Text(
              'Autoconvidados: ',
              style: TextStyle(fontSize: 24, color: SystemColors.branco),
            ),
             Text(
              '10',
              style: TextStyle(fontSize: 24, color: SystemColors.blue1),
            ),
            ],),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), 
            child:  Row ( children: [
                Text(
              'Ziraldos: ',
              style: TextStyle(fontSize: 24, color: SystemColors.branco),
            ),
             Text(
              '3',
              style: TextStyle(fontSize: 24, color: SystemColors.blue1),
            ),
            ],),
          ),
        ],
      ),
    );
  }
}
