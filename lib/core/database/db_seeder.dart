import '../../models/topic.dart';
import '../../models/lesson.dart';
import 'database_helper.dart';

class DbSeeder {
  static Future<void> seedIfEmpty() async {
    final db = DatabaseHelper.instance;
    final existing = await db.getTopicsBySubject('Algebra');
    if (existing.isNotEmpty) return; // already seeded

    // Algebra topics (from algebra_viewmodel.dart)
    final algebraTopics = [
      Topic(
        subject: 'Algebra',
        title: 'Algebraic Expressions',
        description: 'Learn the basic concepts of algebraic expressions.',
      ),
      Topic(
        subject: 'Algebra',
        title: 'Operations on Algebraic Expressions',
        description: 'Learn how to perform operations on algebraic expressions.',
      ),
      Topic(
        subject: 'Algebra',
        title: 'Special Products',
        description: 'Explore common special product patterns.',
      ),
      Topic(
        subject: 'Algebra',
        title: 'Factorization',
        description: 'Learn different methods of factoring algebraic expressions.',
      ),
      Topic(
        subject: 'Algebra',
        title: 'Rational Algebraic Expressions',
        description: 'Study operations involving rational algebraic expressions.',
      ),
      Topic(
        subject: 'Algebra',
        title: 'Algebraic Equations',
        description: 'Learn how to solve algebraic equations.',
      ),
      Topic(
        subject: 'Algebra',
        title: 'Sequences',
        description: 'Explore patterns and sequences.',
      ),
    ];

    // Geometry topics (from geometry_viewmodel.dart)
    final geometryTopics = [
      Topic(
        subject: 'Geometry',
        title: 'Cartesian Coordinate Plane',
        description: 'Learn about points and locations on the coordinate plane.',
      ),
      Topic(
        subject: 'Geometry',
        title: 'Distance and Midpoint',
        description: 'Learn how to determine distance and midpoint.',
      ),
      Topic(
        subject: 'Geometry',
        title: 'Volumes of Geometric Solids',
        description: 'Study volume concepts for geometric solids.',
      ),
      Topic(
        subject: 'Geometry',
        title: 'Pythagorean Theorem',
        description: 'Explore the relationship between the sides of a right triangle.',
      ),
      Topic(
        subject: 'Geometry',
        title: 'Triangle Inequality Theorems',
        description: 'Learn about relationships between the sides of triangles.',
      ),
    ];

    for (final topic in [...algebraTopics, ...geometryTopics]) {
      await db.insertTopic(topic);
    }

    // Seed the one existing lesson (from algebra_viewmodel.dart)
    final allAlgebra = await db.getTopicsBySubject('Algebra');
    final exprTopic = allAlgebra.firstWhere((t) => t.title == 'Algebraic Expressions');

    await db.insertLesson(Lesson(
      topicId: exprTopic.id,
      title: 'Introduction to Algebraic Expressions',
      overview: 'An introduction to algebraic expressions.',
      explanation: 'This is temporary lesson content for testing the model.',
      example: 'Example: 2x + 3 is an algebraic expression.',
    ));
  }
}