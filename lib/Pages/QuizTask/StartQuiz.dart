import 'package:flutter/material.dart';

class Startquiz extends StatelessWidget {
  const Startquiz({super.key,required this.onStartQuiz});
  final VoidCallback? onStartQuiz;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Start Quiz'),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              size: 30,
              Icons.arrow_circle_right_outlined),
          ),
          Center(
            child: ElevatedButton(
              onPressed: onStartQuiz,
              child: Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                'Procced to Quiz'),
            ),
          ),
        ],
      )
    );
  }
}
