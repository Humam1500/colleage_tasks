import 'package:colleage_tasks/Pages/BooleanTextPage.dart';
import 'package:colleage_tasks/Pages/CounterPage.dart';
import 'package:colleage_tasks/Pages/Text&ContainerPage.dart';
import 'package:colleage_tasks/Pages/ToggleIconPage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("College Tasks"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height:70,
            ),
            
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(16),
                     child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.all(18),
                        
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TextAndContainerPage()));
                      },
                      child: const Text(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20),
                        "Custom Made Text&Container"),
                                   ),
                   ),

                                 Icon(
                    Icons.arrow_forward,
                    size: 35,),
                 ],
               ), 

                Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(16),
                     child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.all(18),
                        
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Counterpage()));
                      },
                      child: const Text(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20),
                        "Counter Task"),
                                   ),
                   ),

                                 Icon(
                    Icons.arrow_forward,
                    size: 35,),
                 ],
               ),     

               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(16),
                     child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.all(18),
                        
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Booleantextpage()));
                      },
                      child: const Text(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20),
                        "Boolean Text Task"),
                                   ),
                   ),

                                 Icon(
                    Icons.arrow_forward,
                    size: 35,),
                 ],
               ),  

               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(16),
                     child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.all(18),
                        
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Toggleiconpage()));
                      },
                      child: const Text(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20),
                        "Icon Toggle Task"),
                                   ),
                   ),

                                 Icon(
                    Icons.arrow_forward,
                    size: 35,),
                 ],
               ),          
          ],
        ),
      ),
    );
  }
}