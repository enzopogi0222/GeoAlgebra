import '../models/topic.dart';
import '../core/database/database_helper.dart';

class GeometryViewModel {
  String get title => 'Geometry';

  String get description =>
      'Explore Grade 8 Geometry concepts through interactive lessons and activities.';

  Future<List<Topic>> get topics => DatabaseHelper.instance.getTopicsBySubject('Geometry');
}