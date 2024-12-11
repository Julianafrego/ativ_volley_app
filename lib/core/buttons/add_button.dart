import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';

class AddButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Object? heroTag;

  const AddButton({super.key, this.onPressed, this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 7, right: 15),
      child: FloatingActionButton(
        onPressed: onPressed,
        heroTag: heroTag, 
        backgroundColor: SystemColors.blue1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50), 
        ),
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
