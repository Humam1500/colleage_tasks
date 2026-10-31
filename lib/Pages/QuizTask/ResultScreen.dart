import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen({
    super.key,
    required this.isCorrect,
    required this.onRestart,
  });

  final bool isCorrect;
  final VoidCallback onRestart;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          isCorrect ? 'Correct!' : 'Incorrect.'),
        const SizedBox(height: 16),
        ElevatedButton(onPressed: onRestart, child: const Text(
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          'Try Again')
          ),
      ],
    );
  }
}
