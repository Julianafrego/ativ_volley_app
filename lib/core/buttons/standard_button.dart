import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';
class StandardButton extends StatelessWidget {
  final String text; 
  final VoidCallback? onPressed;
  const StandardButton({super.key, required this.text, required this.onPressed});

  @override

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(10),
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
          backgroundColor: WidgetStateProperty.all<Color>(SystemColors.blue1),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Define o raio da borda
              side: const BorderSide(
                  color: Colors.white,
                  width: 2), // Borda branca com largura de 2
            ),
          ),
        ),
       onPressed: onPressed,
        child: Text(
          text,
          style:  const TextStyle(
            fontSize: 30,
            fontFamily: 'Concert One',
          ),
        ),
      ),
    );
  }
}
