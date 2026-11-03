import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen({
    super.key,
    required this.isCorrect,
    required this.onRestart, 
    required this.score,
  });

  final bool isCorrect;
  final VoidCallback onRestart;
  final int score;
  

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

          Text(
           'Your score: $score',
           style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: score==0||score==1?Colors.red:score==2?Colors.amber:Colors.green
           ), 
          ),
      ],
    );
  }
}
