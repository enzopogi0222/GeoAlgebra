import '../../seed_helpers.dart';

const perfectSquareTrinomialsLesson = LessonSeedData(
  title: 'Factoring Perfect Square Trinomials',
  overview:
      'Recognize a trinomial that is the square of a binomial and factor it back into that '
      'binomial squared.',
  explanation:
      'Squaring a binomial follows two patterns:\n\n'
      '   (a + b)² = a² + 2ab + b²\n\n'
      '   (a - b)² = a² - 2ab + b²\n\n'
      'The results are called perfect square trinomials. Factoring one means running the '
      'pattern backwards:\n\n'
      '   a² + 2ab + b² = (a + b)²\n\n'
      '   a² - 2ab + b² = (a - b)²\n\n'
      'To check whether a trinomial is a perfect square trinomial:\n\n'
      '• 1. The first and last terms must both be perfect squares. Their square roots are a '
      'and b.\n\n'
      '• 2. The middle term must be twice the product of a and b (2ab), either positive or '
      'negative.\n\n'
      'If both conditions hold, the sign of the middle term tells you the sign inside the '
      'binomial: a positive middle term gives (a + b)², and a negative middle term gives '
      '(a - b)². ',
  example:
      'Example 1: Factor x² + 10x + 25.\n\n'
      'Step 1: x² = (x)² and 25 = 5², so a = x and b = 5.\n\n'
      'Step 2: Check the middle term: 2(x)(5) = 10x. ✔\n\n'
      'Step 3: The middle term is positive, so use a plus sign.\n\n'
      'Answer: x² + 10x + 25 = (x + 5)²\n\n\n'

      'Example 2 (Negative middle term): Factor y² - 14y + 49.\n\n'
      'Step 1: y² = (y)² and 49 = 7², so a = y and b = 7.\n\n'
      'Step 2: Check the middle term: 2(y)(7) = 14y. ✔\n\n'
      'Step 3: The middle term is negative, so use a minus sign.\n\n'
      'Answer: y² - 14y + 49 = (y - 7)²\n\n\n'

      'Example 3 (Coefficients): Factor 4m² + 12m + 9.\n\n'
      'Step 1: 4m² = (2m)² and 9 = 3², so a = 2m and b = 3.\n\n'
      'Step 2: Check the middle term: 2(2m)(3) = 12m. ✔\n\n'
      'Answer: 4m² + 12m + 9 = (2m + 3)²\n\n\n'

      'Example 4 (Two variables): Factor 25a² - 30ab + 9b².\n\n'
      'Step 1: 25a² = (5a)² and 9b² = (3b)², so a = 5a and b = 3b.\n\n'
      'Step 2: Check the middle term: 2(5a)(3b) = 30ab. ✔\n\n'
      'Step 3: The middle term is negative, so use a minus sign.\n\n'
      'Answer: 25a² - 30ab + 9b² = (5a - 3b)²\n\n\n'

      'Example 5 (Common factor first): Factor 2x² + 12x + 18.\n\n'
      'Step 1: Take out the common monomial factor 2: 2(x² + 6x + 9).\n\n'
      'Step 2: x² + 6x + 9 is a perfect square trinomial: (x)² + 2(x)(3) + 3² = (x + 3)².\n\n'
      'Answer: 2x² + 12x + 18 = 2(x + 3)²',
);
