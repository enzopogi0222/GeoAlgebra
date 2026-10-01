import '../../seed_helpers.dart';

const differenceOfTwoSquaresLesson = LessonSeedData(
  title: 'Factoring the Difference of Two Squares',
  overview:
  'Factor a binomial made of two perfect squares separated by a minus sign into the sum '
      'and difference of the square roots.',
  explanation:
  'Pattern: a² - b² = (a + b)(a - b). Check that the polynomial has exactly two terms, both '
      'perfect squares, separated by a minus sign — then find the square root of each. A sum '
      'of squares (a² + b²) cannot be factored this way. Always factor out a common monomial '
      'factor first if one exists, and keep factoring if a resulting factor is itself a '
      'difference of squares.',
  example:
  'Example 1: Factor x² - 4.\n\n'
      'Step 1: a = x (√x²), b = 2 (√4).\n\n'
      'Answer: x² - 4 = (x + 2)(x - 2)\n\n\n'

      'Example 2 (Two variables): Factor 49m² - 64n².\n\n'
      'Step 1: a = 7m (√49m²), b = 8n (√64n²).\n\n'
      'Answer: 49m² - 64n² = (7m + 8n)(7m - 8n)\n\n\n'

      'Example 3 (Factor completely): Factor 16x⁴ - 81.\n\n'
      'Step 1: a = 4x², b = 9: 16x⁴ - 81 = (4x² + 9)(4x² - 9).\n\n'
      'Step 2: 4x² - 9 is again a difference of squares: (2x + 3)(2x - 3). 4x² + 9 (a sum of '
      'squares) cannot be factored further.\n\n'
      'Answer: 16x⁴ - 81 = (4x² + 9)(2x + 3)(2x - 3)',
);