import '../core/database/database_helper.dart';
import '../models/topic.dart';

class SubjectViewModel {
  final String subject;
  SubjectViewModel(this.subject);

  String get title => subject;
  String get description =>
      'Explore Grade 8 $subject concepts through interactive lessons and activities.';

  Future<List<Topic>> get topics =>
      DatabaseHelper.instance.getTopicsBySubject(subject);
}