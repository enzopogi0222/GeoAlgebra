import 'package:flutter/material.dart';
import '../../viewmodels/geometry_viewmodel.dart';

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
                (topic) => Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                leading: const Icon(Icons.change_history),

                title: Text(
                  topic,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

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