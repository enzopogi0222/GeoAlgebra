import '../../database_helper.dart';
import '../seed_helpers.dart';
import 'operations_on_algebraic_expressions/addition_subtraction_monomials.dart';
import 'operations_on_algebraic_expressions/addition_subtraction_multinomials.dart';
import 'operations_on_algebraic_expressions/division.dart';
import 'operations_on_algebraic_expressions/laws_of_exponents.dart';
import 'operations_on_algebraic_expressions/multiplication.dart';

class OperationsOnAlgebraicExpressionsLessons {
  static Future<void> seed(DatabaseHelper db) => seedTopicLessons(
        db,
        subject: 'Algebra',
        topicTitle: 'Operations on Algebraic Expressions',
        lessons: [
          additionSubtractionMonomialsLesson,
          additionSubtractionMultinomialsLesson,
          lawsOfExponentsLesson,
          multiplicationLesson,
          divisionLesson,
        ],
      );
}
