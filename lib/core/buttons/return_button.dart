import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';


class ReturnButton extends StatelessWidget {
  const ReturnButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        style: ButtonStyle(
          iconSize: WidgetStateProperty.all<double>(40.0),
          foregroundColor: WidgetStateProperty.all<Color>(SystemColors.branco),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const BackButton());
  }
}