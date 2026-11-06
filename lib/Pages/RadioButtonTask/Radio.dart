import 'package:colleage_tasks/Pages/RadioButtonTask/AboutPage.dart';
import 'package:flutter/material.dart';

class RadioButton extends StatelessWidget {
  final String? current;
  static const options = ['Good', 'Bad', 'Not bad'];

  const RadioButton({super.key,  this.current});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select an option'),
      ),
      body: Column(
        children: options.map((option) {
          return RadioListTile<String>(
            title: Text(option),
            value: option,
            groupValue: current,
            onChanged: (value) {
              Navigator.pop(context, value);
            },
          );
        }).toList(),
      ),
    );
  }
}