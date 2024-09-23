import 'package:flutter/material.dart';
import 'teams.dart';

void main() {
  runApp(const MyApp());
}

class MyColors {
  static const Color blue1 = Color(0xFF2C4C8C);
  static const Color blue2 = Color(0xFF08ADC4);
  static const Color blue3 = Color(0xFF77D4DC);
  static const Color yellow = Color(0xFFF2C438);
  static const Color green = Color(0xFF7CBC74);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner "Debug"

      home: Scaffold(
        backgroundColor: MyColors.blue2,
        body: Center(
            child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: TopWidget(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 120),
              child: TeamsContainer(),
            ),
          ],
        )),
      ),
    );
  }
}

/////////

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
