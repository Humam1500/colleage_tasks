import 'package:flutter/material.dart';

class Toggleiconpage extends StatefulWidget {
  const Toggleiconpage({super.key});

  @override
  State<Toggleiconpage> createState() => _ToggleiconpageState();
}

class _ToggleiconpageState extends State<Toggleiconpage> {
   bool ToggleIcon=false;

   void toggleIcon(){
    setState(() {
      ToggleIcon=!ToggleIcon;
    });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toggle Icon Task'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              size: 70,
              color: ToggleIcon?Colors.red:Colors.black,
              ToggleIcon?Icons.account_circle_outlined:Icons.account_circle
            ),

            ElevatedButton(
              onPressed: (){
              toggleIcon();
              }, 
              child: Text(
                style: TextStyle(
                  fontSize: 20,
                ),
                'Change Icon Shape'),)
          ],
          ),
      ),
    );
  }
}