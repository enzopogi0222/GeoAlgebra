import 'package:flutter/material.dart';
import '../../models/lesson.dart';
import '../../viewmodels/lesson_viewmodel.dart';

class LessonView extends StatelessWidget {
  final Lesson lesson;

  const LessonView({
    super.key,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = LessonViewModel(lesson);

    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.title),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Overview',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              viewModel.overview,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Explanation',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              viewModel.explanation,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Worked Example',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  viewModel.example,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}