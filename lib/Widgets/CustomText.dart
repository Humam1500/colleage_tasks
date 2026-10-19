import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
   Customtext({
    super.key, 
    required this.title, 
    required this.size,  
    this.color=Colors.black,
    });
  final String title;
  final double size;
   Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: color,
      ),
    );
  }
}
   