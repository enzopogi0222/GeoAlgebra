import '../../database_helper.dart';
import '../seed_helpers.dart';
import 'algebraic_expressions/algebraic_expressions_modeling.dart';

class AlgebraicExpressionsModelingLesson {
  static Future<void> seed(DatabaseHelper db) => seedTopicLessons(
        db,
        subject: 'Algebra',
        topicTitle: 'Algebraic Expressions',
        lessons: [
          algebraicExpressionsModelingLesson,
        ],
      );
}
