import '../../seed_helpers.dart';

const productOfSumAndDifferenceLesson = LessonSeedData(
  title: 'Product of Sum and Difference of Two Terms',
  overview:
  'Multiply a sum and a difference of the same two terms directly, producing a two-term '
      'result called a difference of two squares.',
  explanation:
  'Pattern: (a + b)(a - b) = a² - b². The middle terms cancel, leaving only 2 terms. To '
      'apply it: square the first term, square the second term, and subtract.',
  example:
  'Example 1: Multiply (x + 3)(x - 3).\n\n'
      'Step 1: Square each term: x², 3² = 9.\n\n'
      'Answer: (x + 3)(x - 3) = x² - 9\n\n\n'

      'Example 2 (Leading coefficient): Multiply (2y - 5)(2y + 5).\n\n'
      'Step 1: Square each term: (2y)² = 4y²; 5² = 25.\n\n'
      'Answer: (2y - 5)(2y + 5) = 4y² - 25\n\n\n'

      'Example 3 (Negative first term): Multiply (-a² - xy)(-a² + xy).\n\n'
      'Step 1: Square each term: (-a²)² = a⁴; (xy)² = x²y².\n\n'
      'Answer: (-a² - xy)(-a² + xy) = a⁴ - x²y²',
);