import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Randomdicepage extends StatefulWidget {
  const Randomdicepage({super.key});

  @override
  State<Randomdicepage> createState() => _RandomdicepageState();
}

class _RandomdicepageState extends State<Randomdicepage> {
  final Random _random=Random();
  int _roll=1;

  void _rollDice(){
    setState(() {
      _roll=_random.nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Dice Task'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'lib/Widgets/assets/Images/dice-$_roll.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: (){
                _rollDice();
              }, 
              child: Text(
                style: TextStyle(fontSize: 20,),
                'Roll Dice'),
                ),
          ],
        ),
      ),
    );
  }
}
