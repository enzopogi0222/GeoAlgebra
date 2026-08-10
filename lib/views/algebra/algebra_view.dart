import 'package:flutter/material.dart';
import '../../viewmodels/algebra_viewmodel.dart';

class AlgebraView extends StatelessWidget {
  AlgebraView({super.key});

  final AlgebraViewModel viewModel = AlgebraViewModel();

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
                (topic) => Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                leading: const Icon(Icons.functions),

                title: Text(
                  topic.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                subtitle: Text(topic.description),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),

                onTap: () {
                  // Lesson navigation will be added later.
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}