import '../models/lesson.dart';

class LessonListViewModel {
  final String topicTitle;
  final List<Lesson> lessons;

  LessonListViewModel({
    required this.topicTitle,
    required this.lessons,
  });

  String get title => topicTitle;
}