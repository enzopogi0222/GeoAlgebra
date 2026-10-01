import '../../seed_helpers.dart';

const sumAndDifferenceOfCubesLesson = LessonSeedData(
  title: 'Factoring the Sum and Difference of Two Cubes',
  overview: 'Factor a binomial made of two perfect cubes into a binomial times a trinomial.',
  explanation:
  'a³ + b³ = (a + b)(a² - ab + b²); a³ - b³ = (a - b)(a² + ab + b²). Remember the signs with '
      'SOAP: Same sign as the original in the binomial factor, Opposite sign for the middle '
      'term of the trinomial, Always Positive for the trinomial\'s last term.',
  example:
  'Example 1 (Sum of cubes): Factor 27p³ + q³.\n\n'
      'Step 1: a = 3p, b = q.\n\n'
      'Step 2: Apply SOAP: (3p + q)(9p² - 3pq + q²).\n\n'
      'Answer: 27p³ + q³ = (3p + q)(9p² - 3pq + q²)\n\n\n'

      'Example 2 (Difference of cubes, two variables): Factor 8m³ - 27n³.\n\n'
      'Step 1: a = 2m, b = 3n.\n\n'
      'Step 2: Apply SOAP: (2m - 3n)(4m² + 6mn + 9n²).\n\n'
      'Answer: 8m³ - 27n³ = (2m - 3n)(4m² + 6mn + 9n²)\n\n\n'

      'Example 3 (Common factor first): Factor 2x³ + 54.\n\n'
      'Step 1: Factor out the GCF 2: 2(x³ + 27).\n\n'
      'Step 2: x³ + 27 is a sum of cubes: a = x, b = 3. Apply SOAP: (x + 3)(x² - 3x + 9).\n\n'
      'Answer: 2x³ + 54 = 2(x + 3)(x² - 3x + 9)',
);