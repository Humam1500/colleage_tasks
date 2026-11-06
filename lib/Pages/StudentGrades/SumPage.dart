import 'package:colleage_tasks/Pages/StudentGrades/AveargePage.dart';
import 'package:flutter/material.dart';
import 'package:colleage_tasks/Widgets/GradeField.dart';

class Sumpage extends StatefulWidget {
  const Sumpage({super.key,this.Average=0});
   final double Average;
  @override
  State<Sumpage> createState() => _SumpageState();
}

class _SumpageState extends State<Sumpage> {
  double sum = 0;

  int? howManyFilledGrades() {
    int count = 0;
    for (final controller in _gradeControllers) {
      if (controller.text.isNotEmpty) {
        count++;
      }
    }
    return count;
  }
  final _gradeControllers = List.generate(4, (_) => TextEditingController());

  @override
  void dispose() {
    for (final controller in _gradeControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sum the Grades')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Enter your grades',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                'Add up to four grades below.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    
              ),

              SizedBox(height: 24),
              Text(
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                'Your Average: ${widget.Average}'),
              const SizedBox(height: 24),
              for (var i = 0; i < _gradeControllers.length; i++) ...[
                GradeField(
                  controller: _gradeControllers[i],
                  gradeNumber: i + 1,
                  isLast: i == _gradeControllers.length - 1,
                ),
                if (i != _gradeControllers.length - 1)
                  const SizedBox(height: 16),
              ],
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  final grades = _gradeControllers
                      .map((controller) => double.tryParse(controller.text) ?? 0)
                      .toList();
                  setState(() {
                    sum = grades.reduce((a, b) => a + b);
                  });
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Sum of Grades'),
                      content: Text(
                        'The sum of your grades is: $sum,\nYou entered ${howManyFilledGrades()} grades.',
                        style: const TextStyle(fontSize: 20),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Calculate Sum'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AveragePage(sum: sum, filledGradesCount: howManyFilledGrades() ?? 0),
                    ),
                  );
                },
                child: const Text('Calculate Average'),
              )
            ],
          ),
        ),
      ),
    );
  }

}
