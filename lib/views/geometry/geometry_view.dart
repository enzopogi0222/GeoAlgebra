import 'package:flutter/material.dart';
import '../../viewmodels/geometry_viewmodel.dart';
import '../../widgets/topic_card.dart';
import '../lesson/lesson_view.dart';

class GeometryView extends StatelessWidget {
  GeometryView({super.key});

  final GeometryViewModel viewModel = GeometryViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.title),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            viewModel.description,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Topics',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          ...viewModel.topics.map(
                (topic) => TopicCard(
                topic: topic,
                icon: Icons.change_history,
                onTap: () {
                  if (topic.lessons.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            LessonView(lesson: topic.lessons.first),
                      ),
                    );
                  }
                },
              ),
            ),
        ],
      ),
    );
  }
}