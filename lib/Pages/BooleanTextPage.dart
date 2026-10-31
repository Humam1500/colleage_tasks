import 'package:flutter/material.dart';

class Booleantextpage extends StatefulWidget {
  const Booleantextpage({super.key});

  @override
  State<Booleantextpage> createState() => _BooleantextpageState();
}


class _BooleantextpageState extends State<Booleantextpage> {
    bool Show_detials=false;
    void ChangeText(){
      setState(() {
        Show_detials=!Show_detials;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Boolean Text Task'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
                color: Show_detials?Colors.green:Colors.red,
              ),
              
              Show_detials?'Flutter is easy':'Flutter is hard to learn',
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: (){
                  ChangeText();
                }, 
                child:Text(
                style: TextStyle(fontSize: 20,),
                'Make it Easy'),
                ),
          ],
        ),
      ),
    );
  }
}