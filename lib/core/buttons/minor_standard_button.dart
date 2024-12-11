import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';


enum ButtonColor { whiteText, yellowText }

class MinorStandardButton extends StatelessWidget {
  final String text; 
  final VoidCallback? onPressed;
  final Enum? color;
  const MinorStandardButton({super.key, required this.text, required this.onPressed, this.color});

  @override

  @override
  Widget build(BuildContext context) {

    Color textColor = Colors.white;

    if (color == ButtonColor.yellowText) {
      textColor = SystemColors.yellow;
    } else {
      textColor = Colors.white;
    }

    
    return Container(
      width: 200,
      height: 70,
      padding: const EdgeInsets.all(10),
      child: TextButton(
         style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(textColor), 
          backgroundColor: MaterialStateProperty.all<Color>(SystemColors.blue1),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(
                  color: Colors.white,
                  width: 2), 
            ),
          ),
        ),
       onPressed: onPressed,
        child: Text(
          text,
          style:  const TextStyle(
            fontSize: 24,
            fontFamily: 'Concert One',
          ),
        ),
      ),
    );
  }
}
