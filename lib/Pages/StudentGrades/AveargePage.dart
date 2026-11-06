import 'package:colleage_tasks/Pages/StudentGrades/SumPage.dart';
import 'package:flutter/material.dart';

class AveragePage extends StatelessWidget {
  const AveragePage({super.key, required this.sum, required this.filledGradesCount});
  final double sum;
  final int filledGradesCount;
  @override

  Future<void> _openSumPage(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => Sumpage(Average: sum / filledGradesCount),
      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Average of the Grades')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _openSumPage(context),
          child: const Text('Calculate Average'),
        ),
      ),
    );
  }
}