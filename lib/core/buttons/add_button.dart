import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';

class AddButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const AddButton({super.key, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 7, right: 15),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: SystemColors.blue1, 
          shape: const CircleBorder(), // Mantém a forma circular
        ),
        onPressed: onPressed,
        child: const Text(
          '+',
          style: TextStyle(
            fontSize: 26,
            color: SystemColors.branco,
          ),
        ),
      ),
    );
  }
}