import 'package:colleage_tasks/Pages/RadioButtonTask/AboutPage.dart';
import 'package:flutter/material.dart';
import 'package:colleage_tasks/Pages/RadioButtonTask/Radio.dart' hide Radio;
class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
     String? _selectedText;

     Future<void> _openSelectPage() async {
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (_) => RadioButton(current: _selectedText)
      ),
    );

    if (result != null) {
      setState(() => _selectedText = result);
    }

  }

String GetSelectedText() {
  if (_selectedText == null) {
    return '...';
  }else {
    return _selectedText!;
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){
              Navigator.push(
                context,
              MaterialPageRoute(builder: (_)=>Aboutpage())
              );
            }, icon: Icon(
              Icons.info,
              size: 30,
              color: Colors.blueAccent,
              )
              ),
          )
        ],
        title: Text('Radio Button Task'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('I rate this year: ${GetSelectedText()}', style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            FloatingActionButton(
              onPressed: _openSelectPage,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}