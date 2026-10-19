import 'package:colleage_tasks/Widgets/CustomContainer.dart';
import 'package:colleage_tasks/Widgets/CustomText.dart';
import 'package:flutter/material.dart';

class TextAndContainerPage extends StatelessWidget {
  const TextAndContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Made Text&Container"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Customcontainer(
              CirularRate: 50,
              size: 350,
              child: Customtext(
                title: 'Wellcome,vibe coding fellas', 
                size: 20
                ),
            ),
          ],
        ),
      ),
    );
  }
}