import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({super.key, required this.onAnswer});
  final void Function(bool) onAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 1'),
        
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
                'Flutter is cross platform Framewrok'),
            ),
            ElevatedButton(
              onPressed: () => onAnswer(true), 
              child: Text(
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                ),
                'True')
                ),
            ElevatedButton(
              onPressed: () => onAnswer(false), 
              child: Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,

                ),
                'False',)
              ),


          ],
        ),
      ),
    );
  }
}
