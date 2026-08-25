import '../models/topic.dart';
import '../models/lesson.dart';


class AlgebraViewModel {
  String get title => 'Algebra';

  String get description =>
      'Explore Grade 8 Algebra concepts through interactive lessons and activities.';

  List<Topic> get topics => [
    Topic(
      subject: 'Algebra',
      title: 'Algebraic Expressions',
      description: 'Learn the basic concepts of algebraic expressions.',
      lessons: [
        Lesson(
          title: 'Introduction to Algebraic Expressions',
          overview: 'An introduction to algebraic expressions.',
          explanation: 'This is temporary lesson content for testing the model.',
          example: 'Example: 2x + 3 is an algebraic expression.',
        ),
      ],
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
}