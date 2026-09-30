import '../../database_helper.dart';
import '../seed_helpers.dart';
import 'special_products/cube_of_binomial.dart';
import 'special_products/product_of_sum_and_difference.dart';
import 'special_products/square_of_binomial.dart';
import 'special_products/square_of_trinomial.dart';

class SpecialProductsLessons {
  static Future<void> seed(DatabaseHelper db) => seedTopicLessons(
        db,
        subject: 'Algebra',
        topicTitle: 'Special Products',
        lessons: [
          squareOfBinomialLesson,
          productOfSumAndDifferenceLesson,
          cubeOfBinomialLesson,
          squareOfTrinomialLesson,
        ],
      );
}
