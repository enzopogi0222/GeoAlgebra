import 'lesson.dart';

class Topic {
  final String title;
  final String description;
  final List<Lesson> lessons;

  Topic({
    required this.title,
    required this.description,
    this.lessons = const [],
  });
}