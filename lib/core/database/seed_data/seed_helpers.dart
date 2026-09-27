import '../../../models/topic.dart';
import '../database_helper.dart';

Future<Topic> topicByTitle(
    DatabaseHelper db,
    String subject,
    String title, {
      int term = 1,
    }) async {
  final list = await db.getTopicsBySubjectAndTerm(subject, term);
  return list.firstWhere((t) => t.title == title);
}