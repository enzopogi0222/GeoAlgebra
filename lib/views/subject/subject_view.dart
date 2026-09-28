import 'package:flutter/material.dart';
import '../../models/topic.dart';
import '../../viewmodels/subject_viewmodel.dart';
import '../../widgets/topic_card.dart';
import '../../widgets/term_header.dart';
import '../lesson/lesson_list_view.dart';
import '../lesson/lesson_view.dart';

class SubjectView extends StatelessWidget {
  final String subject;
  final IconData icon;

  const SubjectView({super.key, required this.subject, required this.icon});

  @override
  Widget build(BuildContext context) {
    final viewModel = SubjectViewModel(subject);

    return Scaffold(
      appBar: AppBar(title: Text(viewModel.title)),
      body: SafeArea(
        child: FutureBuilder<List<Topic>>(
          future: viewModel.topics,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text('Failed to load topics: ${snapshot.error}'));
            }

            // Group topics by term, preserving order
            final Map<int, List<Topic>> byTerm = {};
            for (final topic in snapshot.data ?? <Topic>[]) {
              byTerm.putIfAbsent(topic.term, () => []).add(topic);
            }
            final terms = byTerm.keys.toList()..sort();

            return ListView(
              padding: const EdgeInsets.all(20),
              children: [
                Text(viewModel.description, style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 10),
                for (final term in terms) ...[
                  TermHeader(term: term),
                  ...byTerm[term]!.map(
                        (topic) => TopicCard(
                      topic: topic,
                      icon: icon,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => topic.lessons.length == 1
                              ? LessonView(lesson: topic.lessons.first)
                              : LessonListView(topic: topic),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}