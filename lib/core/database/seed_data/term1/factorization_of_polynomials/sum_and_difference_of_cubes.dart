import '../../seed_helpers.dart';

const sumAndDifferenceOfCubesLesson = LessonSeedData(
  title: 'Factoring the Sum and Difference of Two Cubes',
  overview:
      'Factor a binomial made of two perfect cubes into a binomial times a trinomial.',
  explanation:
      'The sum or difference of two cubes can be factored into a binomial times a trinomial:\n\n'
      '   a³ + b³ = (a + b)(a² - ab + b²)\n\n'
      '   a³ - b³ = (a - b)(a² + ab + b²)\n\n'
      'A helpful way to remember the signs is the word SOAP:\n\n'
      '• S — Same sign as the sign in the middle of the original expression (this is the '
      'sign in the binomial factor).\n\n'
      '• O — Opposite sign (this is the sign of the middle term in the trinomial factor).\n\n'
      '• AP — Always Positive (the last term of the trinomial factor).\n\n'
      'Steps:\n\n'
      '• 1. Write each term as a perfect cube to find a and b.\n\n'
      '• 2. Write the binomial factor (a + b) or (a - b), using the same sign as the original.\n\n'
      '• 3. Write the trinomial factor: a², then ab with the opposite sign, then b² (always '
      'positive).',
  example:
      'Example 1 (Sum of cubes): Factor 27p³ + q³.\n\n'
      'Step 1: Write each term as a cube: 27p³ = (3p)³ and q³ = (q)³, so a = 3p and b = q.\n\n'
      'Step 2: Binomial factor, same sign as the original (+): (3p + q).\n\n'
      'Step 3: Trinomial factor: a² = 9p², ab = 3pq with the opposite sign (-), and b² = q² '
      '(positive): (9p² - 3pq + q²).\n\n'
      'Answer: 27p³ + q³ = (3p + q)(9p² - 3pq + q²)\n\n\n'

      'Example 2 (Difference of cubes): Factor x³ - 8.\n\n'
      'Step 1: x³ = (x)³ and 8 = 2³, so a = x and b = 2.\n\n'
      'Step 2: Binomial factor, same sign (-): (x - 2).\n\n'
      'Step 3: Trinomial factor: a² = x², ab = 2x with the opposite sign (+), b² = 4: '
      '(x² + 2x + 4).\n\n'
      'Answer: x³ - 8 = (x - 2)(x² + 2x + 4)\n\n\n'

      'Example 3: Factor 64y³ + 125.\n\n'
      'Step 1: 64y³ = (4y)³ and 125 = 5³, so a = 4y and b = 5.\n\n'
      'Step 2: Binomial factor: (4y + 5).\n\n'
      'Step 3: Trinomial factor: a² = 16y², ab = 20y (opposite sign, so -), b² = 25: '
      '(16y² - 20y + 25).\n\n'
      'Answer: 64y³ + 125 = (4y + 5)(16y² - 20y + 25)\n\n\n'

      'Example 4 (Two variables): Factor 8m³ - 27n³.\n\n'
      'Step 1: 8m³ = (2m)³ and 27n³ = (3n)³, so a = 2m and b = 3n.\n\n'
      'Step 2: Binomial factor: (2m - 3n).\n\n'
      'Step 3: Trinomial factor: a² = 4m², ab = 6mn (opposite sign, so +), b² = 9n²: '
      '(4m² + 6mn + 9n²).\n\n'
      'Answer: 8m³ - 27n³ = (2m - 3n)(4m² + 6mn + 9n²)\n\n\n'

      'Example 5 (Common factor first): Factor 2x³ + 54.\n\n'
      'Step 1: Take out the common monomial factor 2: 2(x³ + 27).\n\n'
      'Step 2: x³ + 27 is a sum of cubes: (x)³ + (3)³, so a = x and b = 3.\n\n'
      'Step 3: Apply the pattern: (x + 3)(x² - 3x + 9).\n\n'
      'Answer: 2x³ + 54 = 2(x + 3)(x² - 3x + 9)',
);
