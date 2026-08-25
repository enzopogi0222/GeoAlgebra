import 'package:flutter/material.dart';
import '../../models/topic.dart';
import '../../viewmodels/algebra_viewmodel.dart';
import '../../widgets/topic_card.dart';
import '../../widgets/term_header.dart';
import '../lesson/lesson_list_view.dart';

class AlgebraView extends StatelessWidget {
  AlgebraView({super.key});

  final AlgebraViewModel viewModel = AlgebraViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.title),
      ),
      body: FutureBuilder<List<Topic>>(
        future: viewModel.topics,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Failed to load topics: ${snapshot.error}'));
          }

          final topics = snapshot.data ?? [];

          // Group topics by term, preserving order
          final Map<int, List<Topic>> byTerm = {};
          for (final topic in topics) {
            byTerm.putIfAbsent(topic.term, () => []).add(topic);
          }
          final terms = byTerm.keys.toList()..sort();

          return ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Text(
                viewModel.description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),

              for (final term in terms) ...[
                TermHeader(term: term),
                ...byTerm[term]!.map(
                      (topic) => TopicCard(
                    topic: topic,
                    icon: Icons.functions,
                    onTap: () {
                      if (topic.lessons.isNotEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LessonListView(topic: topic),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}