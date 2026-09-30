import '../../seed_helpers.dart';

const differenceOfTwoSquaresLesson = LessonSeedData(
  title: 'Factoring the Difference of Two Squares',
  overview:
      'Factor a binomial made of two perfect squares separated by a minus sign into the sum '
      'and difference of the square roots.',
  explanation:
      'In the Special Products lesson, you learned that (a + b)(a - b) = a² - b². Factoring the '
      'difference of two squares simply reads that pattern in reverse:\n\n'
      '   a² - b² = (a + b)(a - b)\n\n'
      'To use it:\n\n'
      '• 1. Check that there are exactly two terms, that both are perfect squares, and that '
      'they are separated by a minus sign.\n\n'
      '• 2. Find the square root of each term. These are a and b.\n\n'
      '• 3. Write (a + b)(a - b).\n\n'
      'Important notes:\n\n'
      '• A sum of two squares, such as x² + 9, cannot be factored using real numbers.\n\n'
      '• Always look for a common monomial factor first. After taking it out, a difference of '
      'squares may appear.\n\n'
      '• Sometimes one of the new factors is itself a difference of squares. Keep factoring '
      'until nothing more can be factored (completely).',
  example:
      'Example 1: Factor x² - 4.\n\n'
      'Step 1: x² is a perfect square (a = x) and 4 is a perfect square (b = 2), separated by '
      'a minus sign.\n\n'
      'Step 2: Write (a + b)(a - b).\n\n'
      'Answer: x² - 4 = (x + 2)(x - 2)\n\n\n'

      'Example 2 (Coefficients): Factor 9y² - 25.\n\n'
      'Step 1: 9y² = (3y)² and 25 = 5², so a = 3y and b = 5.\n\n'
      'Answer: 9y² - 25 = (3y + 5)(3y - 5)\n\n\n'

      'Example 3 (Two variables): Factor 49m² - 64n².\n\n'
      'Step 1: 49m² = (7m)² and 64n² = (8n)², so a = 7m and b = 8n.\n\n'
      'Answer: 49m² - 64n² = (7m + 8n)(7m - 8n)\n\n\n'

      'Example 4 (Common factor first): Factor 3x² - 48.\n\n'
      'Step 1: Take out the common monomial factor 3: 3(x² - 16).\n\n'
      'Step 2: x² - 16 is a difference of two squares: x² - 4² = (x + 4)(x - 4).\n\n'
      'Answer: 3x² - 48 = 3(x + 4)(x - 4)\n\n\n'

      'Example 5 (Factor completely): Factor 16x⁴ - 81.\n\n'
      'Step 1: 16x⁴ = (4x²)² and 81 = 9², so 16x⁴ - 81 = (4x² + 9)(4x² - 9).\n\n'
      'Step 2: The factor 4x² - 9 is again a difference of two squares: '
      '(2x)² - 3² = (2x + 3)(2x - 3).\n\n'
      'Step 3: The factor 4x² + 9 is a sum of squares, so it cannot be factored further.\n\n'
      'Answer: 16x⁴ - 81 = (4x² + 9)(2x + 3)(2x - 3)',
);
