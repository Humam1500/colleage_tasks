import 'package:flutter/material.dart';

class Counterpage extends StatefulWidget {
  const Counterpage({super.key});

  @override
  State<Counterpage> createState() => _CounterpageState();
}


class _CounterpageState extends State<Counterpage> {
   int counter=0;
  @override
  void _increment(){
    setState(() {
      counter++;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Counter Task'),
    ),       
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            'Counter: $counter'),
          IconButton(
            onPressed: (){
              _increment();
            }, 
            icon: Icon(
              
              Icons.add,size: 24,)
            ),
        ],
      ),
    ),
    );
  }
}