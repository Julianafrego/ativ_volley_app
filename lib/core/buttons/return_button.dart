import 'package:flutter/material.dart';
import 'package:ativ_volley_app/core/system_colors.dart';
import 'package:ativ_volley_app/presentation/screens/home_screen.dart'; 

class ReturnButton extends StatelessWidget {
  const ReturnButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40.0, 
      color: SystemColors.branco, 
      onPressed: () {
        if (Navigator.canPop(context)) {
          Navigator.of(context).pop(); 
        } else {
          // Redireciona para a HomeScreen quando a pilha de navegação estiver vazia
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),  
          );
        }
      },
      icon: const Icon(Icons.arrow_back),
    );
  }
}
