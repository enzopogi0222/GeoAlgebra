import '../../seed_helpers.dart';

const squareOfBinomialLesson = LessonSeedData(
  title: 'Square of a Binomial',
  overview:
      'Find the square of a binomial directly, without multiplying it out term by term, using a '
      'repeating pattern.',
  explanation:
      'Special products are called "special" because their results follow a predictable pattern, '
      'so the product can be written down directly instead of working through long '
      'multiplication every time.\n\n'
      'For the square of a binomial, the pattern is:\n\n'
      '   (a ± b)² = a² ± 2ab + b²\n\n'
      'where a is the first term and b is the second term of the binomial. The result of '
      'squaring a binomial is called a perfect square trinomial, and it always has 3 terms:\n\n'
      '• 1. The square of the first term.\n\n'
      '• 2. Twice the product of the first and second terms (keeping the sign between the '
      'original terms).\n\n'
      '• 3. The square of the second term (always positive, since squaring removes the sign).',
  example:
      'Example 1 (Sum): Square (x + 3).\n\n'
      'Step 1: Square the first term: x² = x².\n\n'
      'Step 2: Multiply the first and second terms, then double it: 2(x)(3) = 6x.\n\n'
      'Step 3: Square the second term: 3² = 9.\n\n'
      'Answer: (x + 3)² = x² + 6x + 9\n\n\n'

      'Example 2 (Difference): Square (y - 2).\n\n'
      'Step 1: Square the first term: y² = y².\n\n'
      'Step 2: Multiply the first and second terms, then double it: 2(y)(-2) = -4y.\n\n'
      'Step 3: Square the second term: (-2)² = 4.\n\n'
      'Answer: (y - 2)² = y² - 4y + 4\n\n\n'

      'Example 3 (Leading coefficient): Square (4k + 5).\n\n'
      'Step 1: Square the first term: (4k)² = 16k².\n\n'
      'Step 2: Multiply the first and second terms, then double it: 2(4k)(5) = 40k.\n\n'
      'Step 3: Square the second term: 5² = 25.\n\n'
      'Answer: (4k + 5)² = 16k² + 40k + 25\n\n\n'

      'Example 4 (Negative first term): Square (-9n + 1).\n\n'
      'Step 1: Square the first term: (-9n)² = 81n².\n\n'
      'Step 2: Multiply the first and second terms, then double it: 2(-9n)(1) = -18n.\n\n'
      'Step 3: Square the second term: 1² = 1.\n\n'
      'Answer: (-9n + 1)² = 81n² - 18n + 1\n\n\n'

      'Example 5 (Two variables): Square (4x - 3y).\n\n'
      'Step 1: Square the first term: (4x)² = 16x².\n\n'
      'Step 2: Multiply the first and second terms, then double it: 2(4x)(-3y) = -24xy.\n\n'
      'Step 3: Square the second term: (-3y)² = 9y².\n\n'
      'Answer: (4x - 3y)² = 16x² - 24xy + 9y²',
);
