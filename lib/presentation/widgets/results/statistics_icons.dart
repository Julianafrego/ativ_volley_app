import 'package:flutter/material.dart';

class StatisticsIcons extends StatelessWidget {
  const StatisticsIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [
           const Icon(Icons.bar_chart,
                              size: 35, color: Colors.white),
                          const Icon(Icons.bar_chart,
                              size: 35, color: Colors.white),
                          const Icon(Icons.bar_chart,
                              size: 35, color: Colors.white),
                          const Icon(Icons.bar_chart,
                              size: 35, color: Colors.white),
        ],
    );
  }
}