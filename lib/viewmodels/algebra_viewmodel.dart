import '../models/topic.dart';
import '../core/database/database_helper.dart';

class AlgebraViewModel {
  String get title => 'Algebra';

  String get description =>
      'Explore Grade 8 Algebra concepts through interactive lessons and activities.';

  Future<List<Topic>> get topics =>
      DatabaseHelper.instance.getTopicsBySubject('Algebra');
}
