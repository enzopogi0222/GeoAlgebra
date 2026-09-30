import '../../database_helper.dart';
import '../seed_helpers.dart';
import 'factorization_of_polynomials/common_monomial_factor.dart';
import 'factorization_of_polynomials/difference_of_two_squares.dart';
import 'factorization_of_polynomials/general_trinomials.dart';
import 'factorization_of_polynomials/perfect_square_trinomials.dart';
import 'factorization_of_polynomials/problem_solving.dart';
import 'factorization_of_polynomials/sum_and_difference_of_cubes.dart';

class FactorizationOfPolynomialsLessons {
  static Future<void> seed(DatabaseHelper db) => seedTopicLessons(
        db,
        subject: 'Algebra',
        topicTitle: 'Factorization of Polynomials',
        lessons: [
          commonMonomialFactorLesson,
          differenceOfTwoSquaresLesson,
          perfectSquareTrinomialsLesson,
          sumAndDifferenceOfCubesLesson,
          generalTrinomialsLesson,
          problemSolvingLesson,
        ],
      );
}
