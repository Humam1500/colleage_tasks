import 'package:flutter/material.dart';

class Answer2 extends StatelessWidget {
  const Answer2({super.key,  required this.onAnswer});
  final Function(bool) onAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 2'),
        
      ),

      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                'To make content vertical we use....'),
            ),
            ElevatedButton(
              onPressed: () => onAnswer(true),
              child: Text(
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                ),
                'Coloumn')
                ),
            ElevatedButton(
              onPressed: () => onAnswer(false), 
              child: Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                'Row')
              ),
          ],
        ),
      ),
    );
}
}