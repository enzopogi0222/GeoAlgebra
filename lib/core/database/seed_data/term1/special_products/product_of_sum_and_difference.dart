import '../../seed_helpers.dart';

const productOfSumAndDifferenceLesson = LessonSeedData(
  title: 'Product of Sum and Difference of Two Terms',
  overview:
      'Multiply a sum and a difference of the same two terms directly, producing a two-term '
      'result called a difference of two squares.',
  explanation:
      'When one factor is the sum of two terms and the other factor is the difference of the '
      'exact same two terms, the middle terms always cancel out. The pattern is:\n\n'
      '   (a + b)(a - b) = a² - b²\n\n'
      'where a is the first term and b is the second term. The result is called a difference '
      'of two squares, and it always has exactly 2 terms (no middle term), because the +ab and '
      '-ab from expanding cancel each other. To apply the pattern: square the first term, '
      'square the second term, and subtract.',
  example:
      'Example 1: Multiply (x + 3)(x - 3).\n\n'
      'Step 1: Identify the first term (x) and second term (3).\n\n'
      'Step 2: Square the first term: x².\n\n'
      'Step 3: Square the second term: 3² = 9.\n\n'
      'Step 4: Subtract: x² - 9.\n\n'
      'Answer: (x + 3)(x - 3) = x² - 9\n\n\n'

      'Example 2 (Leading coefficient): Multiply (2y - 5)(2y + 5).\n\n'
      'Step 1: Identify the first term (2y) and second term (5).\n\n'
      'Step 2: Square the first term: (2y)² = 4y².\n\n'
      'Step 3: Square the second term: 5² = 25.\n\n'
      'Step 4: Subtract: 4y² - 25.\n\n'
      'Answer: (2y - 5)(2y + 5) = 4y² - 25\n\n\n'

      'Example 3 (Fraction): Multiply (1/3 + 4x)(1/3 - 4x).\n\n'
      'Step 1: Identify the first term (1/3) and second term (4x).\n\n'
      'Step 2: Square the first term: (1/3)² = 1/9.\n\n'
      'Step 3: Square the second term: (4x)² = 16x².\n\n'
      'Step 4: Subtract: 1/9 - 16x².\n\n'
      'Answer: (1/3 + 4x)(1/3 - 4x) = 1/9 - 16x²\n\n\n'

      'Example 4 (Negative first term): Multiply (-a² - xy)(-a² + xy).\n\n'
      'Step 1: Identify the first term (-a²) and second term (xy).\n\n'
      'Step 2: Square the first term: (-a²)² = a⁴.\n\n'
      'Step 3: Square the second term: (xy)² = x²y².\n\n'
      'Step 4: Subtract: a⁴ - x²y².\n\n'
      'Answer: (-a² - xy)(-a² + xy) = a⁴ - x²y²',
);
