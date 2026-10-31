import 'package:flutter/material.dart';

class Answer3 extends StatelessWidget {
  const Answer3({super.key, required this.onAnswer});
  final Function onAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 3'),
        
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
                'if i want to make a static-contnet page i use...'),
            ),
            ElevatedButton(
              onPressed: () => onAnswer(true),
              child: Text(
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                ),
                'Stateless widget')
                ),
            ElevatedButton(
              onPressed: () => onAnswer(false), 
              child: Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                'Statefull widget')
              ),
          ],
        ),
      ),
    );
  }
}