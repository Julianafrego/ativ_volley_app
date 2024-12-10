import 'package:flutter/material.dart';

class SimpleTextButton extends StatelessWidget {
  final String text;
  const SimpleTextButton({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(10),
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 30,
            fontFamily: 'Concert One',
          ),
        ),
      ),
    );
  }
}
