import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget {
  const Aboutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About'),),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                style: TextStyle(fontSize: 20),
                'The Radio Choices App Desgined for showing the Navigator technolgy'),
            )
          ],
        ),
      ),
    );
  }
}