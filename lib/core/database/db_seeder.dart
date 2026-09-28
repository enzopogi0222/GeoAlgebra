import '../../models/topic.dart';
import 'database_helper.dart';
import 'seed_data/seed_helpers.dart';
import 'seed_data/term1/algebraic_expression.dart';
import 'seed_data/term1/operations_on_algebraic_expressions.dart';
import 'seed_data/term1/special_products.dart';

class DbSeeder {
  static Future<void> seedIfEmpty() async {
    final db = DatabaseHelper.instance;
    final existing = await db.getTopicsBySubject('Algebra');

    if (existing.isEmpty) {
      final topics = [
        // ===== TERM 1 =====
        Topic(
          term: 1,
          subject: 'Algebra',
          title: 'Algebraic Expressions',
          description: 'Model real-life situations using algebraic expressions.',
        ),
        Topic(
          term: 1,
          subject: 'Algebra',
          title: 'Operations on Algebraic Expressions',
          description:
          'Add, subtract, multiply, and divide monomials, binomials, and multinomials.',
        ),
        Topic(
          term: 1,
          subject: 'Algebra',
          title: 'Special Products',
          description: 'Use special product patterns to multiply binomials.',
        ),
        Topic(
          term: 1,
          subject: 'Algebra',
          title: 'Factorization of Polynomials',
          description:
          'Completely factor polynomials with common monomial factors, difference of two '
              'squares, and quadratic trinomials.',
        ),
        Topic(
          term: 1,
          subject: 'Algebra',
          title: 'Rational Algebraic Expressions and Equations',
          description:
          'Simplify, operate with, and solve equations involving rational algebraic '
              'expressions.',
        ),
        Topic(
          term: 1,
          subject: 'Algebra',
          title: 'Sequences',
          description: 'Formulate the rule for finding the next term in a sequence.',
        ),
        Topic(
          term: 1,
          subject: 'Geometry',
          title: 'Cartesian Coordinate Plane',
          description: 'Illustrate and describe the Cartesian coordinate plane, and plot points.',
        ),
        Topic(
          term: 1,
          subject: 'Geometry',
          title: 'Distance and Midpoint',
          description:
          'Solve problems involving distance between two points and the midpoint of a line '
              'segment.',
        ),

        // ===== TERM 2 =====
        Topic(
          term: 2,
          subject: 'Geometry',
          title: 'Volume of Pyramids, Cones, and Spheres',
          description: 'Find and solve problems involving the volume of pyramids, cones, and spheres.',
        ),
        Topic(
          term: 2,
          subject: 'Geometry',
          title: 'Pythagorean Theorem',
          description:
          'Apply the Pythagorean theorem to find a missing side, and its converse to classify '
              'triangles.',
        ),
        Topic(
          term: 2,
          subject: 'Geometry',
          title: 'Triangle Inequality Theorems',
          description: 'Apply triangle inequality theorems to establish results for angles and sides.',
        ),
        Topic(
          term: 2,
          subject: 'Algebra',
          title: 'Financial Problems',
          description:
          'Solve problems involving earning money, profit and loss, best buys, and buying on terms.',
        ),
        Topic(
          term: 2,
          subject: 'Algebra',
          title: 'Linear Equations in One Variable',
          description: 'Solve linear equations and related number, geometry, and money problems.',
        ),
        Topic(
          term: 2,
          subject: 'Algebra',
          title: 'Linear Inequalities in One Variable',
          description: 'Solve and graph linear inequalities in one variable on a number line.',
        ),
        Topic(
          term: 2,
          subject: 'Algebra',
          title: 'Linear Equations in Two Variables',
          description:
          'Determine the slope and intercepts of a line, and find and graph its equation.',
        ),

        // ===== TERM 3 =====
        Topic(
          term: 3,
          subject: 'Algebra',
          title: 'Systems of Linear Equations',
          description:
          'Define, classify, and solve systems of linear equations in two variables graphically '
              'and algebraically.',
        ),
        Topic(
          term: 3,
          subject: 'Algebra',
          title: 'Linear Inequalities in Two Variables',
          description: 'Recognize and solve problems involving linear inequalities in two variables.',
        ),
      ];

      for (final topic in topics) {
        await db.insertTopic(topic);
      }
    }

    // Seed lesson contents if not already seeded
    await _seedLessons(db);
  }

  static Future<void> _seedLessons(DatabaseHelper db) async {
    try {
      final topic = await topicByTitle(db, 'Algebra', 'Algebraic Expressions');
      if (topic.id != null) {
        await AlgebraicExpressionsModelingLesson.seed(db);
      }
    } catch (e) {
      // Ignore if topic not found yet
    }

    try {
      final topic = await topicByTitle(db, 'Algebra', 'Operations on Algebraic Expressions');
      if (topic.id != null) {
        await OperationsOnAlgebraicExpressionsLessons.seed(db);
      }
    } catch (e) {
      // Ignore if topic not found yet
    }
    try {
      final topic = await topicByTitle(db, 'Algebra', 'Special Products');
      if (topic.id != null) {
        await SpecialProductsLessons.seed(db);
      }
    } catch (e) {
      // Ignore if topic not found yet
    }
  }
}