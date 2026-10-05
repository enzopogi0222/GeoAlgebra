import '../../../models/lesson.dart';
import '../../../models/topic.dart';
import '../database_helper.dart';

class LessonSeedData {
  final String title;
  final String overview;
  final String explanation;
  final String example;
  final LessonDiagram? diagram;
  final List<LessonDiagram> diagrams;

  const LessonSeedData({
    required this.title,
    required this.overview,
    required this.explanation,
    required this.example,
    this.diagram,
    this.diagrams = const [],
  });
  List<LessonDiagram> get allDiagrams => [
    if (diagram != null) diagram!,
    ...diagrams,
  ];
}

Future<Topic> topicByTitle(
    DatabaseHelper db,
    String subject,
    String title, {
      int term = 1,
    }) async {
  final list = await db.getTopicsBySubjectAndTerm(subject, term);
  return list.firstWhere((t) => t.title == title);
}

Future<void> seedTopicLessons(
    DatabaseHelper db, {
      required String subject,
      required String topicTitle,
      required List<LessonSeedData> lessons,
      int term = 1,
    }) async {
  final topic = await topicByTitle(db, subject, topicTitle, term: term);
  await db.deleteLessonsByTopic(topic.id!);

  for (final data in lessons) {
    await db.insertLesson(Lesson(
      topicId: topic.id,
      title: data.title,
      overview: data.overview,
      explanation: data.explanation,
      example: data.example,
      diagrams: data.allDiagrams,
    ));
  }
}