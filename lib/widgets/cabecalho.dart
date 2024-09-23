import 'package:flutter/material.dart';



class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.only(right: 60),
        width: 300,
        height: 140,
        child: Row(
          children: [
            Transform.translate(
              offset: Offset(30, -20),
              child: Image.asset(
                './assets/ball.png',
                width: 130,
                height: 130,
              ),
            ),
            Expanded(
              child: const TopTitle(), // O título usará o espaço restante
            ),
          ],
        ),
      ),
    );
  }
}

class TopTitle extends StatelessWidget {
  const TopTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Volley',
          style: TextStyle(
            fontFamily: 'ConcertOne',
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Transform.translate(
          offset: Offset(-14, -20),
          child: Text(
            'do fim de semana',
            style: TextStyle(
              fontFamily: 'ConcertOne',
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
