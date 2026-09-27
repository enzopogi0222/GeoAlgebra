import 'package:flutter/material.dart';
import '../../models/topic.dart';
import '../../viewmodels/lesson_list_viewmodel.dart';
import 'lesson_view.dart';

class LessonListView extends StatelessWidget {
  final Topic topic;

  const LessonListView({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = LessonListViewModel(
      topicTitle: topic.title,
      lessons: topic.lessons,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          viewModel.title,
          maxLines: 2,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: viewModel.lessons.isEmpty
            ? const Center(
          child: Text(
            'No lessons available yet.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        )
            : ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: viewModel.lessons.length,
          itemBuilder: (context, index) {
            final lesson = viewModel.lessons[index];

            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('${index + 1}'),
                ),

                title: Text(
                  lesson.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                subtitle: Text(
                  lesson.overview,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LessonView(
                        lesson: lesson,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
