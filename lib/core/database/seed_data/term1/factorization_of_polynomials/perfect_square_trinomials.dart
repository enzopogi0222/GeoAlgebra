import '../../seed_helpers.dart';

const perfectSquareTrinomialsLesson = LessonSeedData(
  title: 'Factoring Perfect Square Trinomials',
  overview:
  'Recognize a trinomial that is the square of a binomial and factor it back into that '
      'binomial squared.',
  explanation:
  'A perfect square trinomial factors as a² + 2ab + b² = (a + b)², or a² - 2ab + b² = '
      '(a - b)². Check: are the first and last terms perfect squares (giving a and b), and '
      'is the middle term exactly 2ab? If so, the sign of the middle term tells you the sign '
      'inside the binomial.',
  example:
  'Example 1: Factor x² + 10x + 25.\n\n'
      'Step 1: a = x, b = 5; check 2(x)(5) = 10x. ✔\n\n'
      'Answer: x² + 10x + 25 = (x + 5)²\n\n\n'

      'Example 2 (Negative middle term, coefficients): Factor 4m² - 12m + 9.\n\n'
      'Step 1: a = 2m, b = 3; check 2(2m)(3) = 12m, matching the negative middle term. ✔\n\n'
      'Answer: 4m² - 12m + 9 = (2m - 3)²\n\n\n'

      'Example 3 (Common factor first): Factor 2x² + 12x + 18.\n\n'
      'Step 1: Factor out the GCF 2: 2(x² + 6x + 9).\n\n'
      'Step 2: x² + 6x + 9 is a perfect square trinomial: a = x, b = 3, 2(x)(3) = 6x. ✔\n\n'
      'Answer: 2x² + 12x + 18 = 2(x + 3)²',
);