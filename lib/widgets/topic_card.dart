import 'package:flutter/material.dart';
import '../models/topic.dart';

class TopicCard extends StatelessWidget {
  final Topic topic;
  final IconData icon;
  final VoidCallback? onTap;

  const TopicCard({
    super.key,
    required this.topic,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(
          icon,
          size: 32,
        ),
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
        onTap: onTap,
      ),
    );
  }
}