import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';

class ConfigButton extends StatelessWidget {
  const ConfigButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        iconSize: WidgetStateProperty.all<double>(40.0),
        foregroundColor: WidgetStateProperty.all<Color>(SystemColors.white),
      ),
      onPressed: () {},
      icon: const Icon(Icons.settings),
    );
  }
}
