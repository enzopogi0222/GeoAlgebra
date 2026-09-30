import '../../seed_helpers.dart';

const additionSubtractionMultinomialsLesson = LessonSeedData(
  title: 'Addition and Subtraction of Binomials and Multinomials',
  overview:
      'Extend the rule for combining similar monomials to binomials, trinomials, and other '
      'multinomials by matching up like terms.',
  explanation:
      'A binomial has two terms and a multinomial (such as a trinomial) has three or more terms. '
      'Adding or subtracting these expressions still follows the same rule as with monomials: '
      'only similar terms can be combined.\n\n'
      'There are two common ways to organize the work:\n\n'
      '• Horizontal method — write out both expressions in a row, group the similar terms '
      'together, then combine each group.\n\n'
      '• Vertical (column) method — stack the expressions so that similar terms line up in the '
      'same column, then add or subtract straight down each column.\n\n'
      'For subtraction of a binomial or multinomial, the key step is to distribute the minus '
      'sign to every term of the expression being subtracted (changing each of its signs), '
      'which turns the problem into an addition problem. From there, combine similar terms as '
      'usual.',
  example:
      'Example 1 (Adding binomials): Find the sum of (4b - 5) and (-9b + 2).\n\n'
      'Step 1: Group the similar terms: (4b + (-9b)) + (-5 + 2).\n\n'
      'Step 2: Combine the b-terms: 4b + (-9b) = -5b.\n\n'
      'Step 3: Combine the constant terms: -5 + 2 = -3.\n\n'
      'Answer: (4b - 5) + (-9b + 2) = -5b - 3\n\n\n'

      'Example 2 (Subtracting binomials): Find the difference of (8x² + 3x) and (2x² - 6x).\n\n'
      'Step 1: Distribute the minus sign to every term of the second binomial: '
      '(8x² + 3x) + (-2x² + 6x).\n\n'
      'Step 2: Combine the x²-terms: 8x² + (-2x²) = 6x².\n\n'
      'Step 3: Combine the x-terms: 3x + 6x = 9x.\n\n'
      'Answer: (8x² + 3x) - (2x² - 6x) = 6x² + 9x\n\n\n'

      'Example 3 (Adding trinomials, vertical method): Find the sum of (2a - 5b + 6c) and '
      '(-a + 3b - 9c).\n\n'
      'Step 1: Stack the expressions so like terms line up in columns:\n'
      '   2a - 5b + 6c\n'
      '   -a + 3b - 9c\n\n'
      'Step 2: Add each column: (2a + (-a)) = a; (-5b + 3b) = -2b; (6c + (-9c)) = -3c.\n\n'
      'Answer: (2a - 5b + 6c) + (-a + 3b - 9c) = a - 2b - 3c\n\n\n'

      'Example 4 (Subtracting trinomials): Find the difference of (7m² - 4m + 10) and '
      '(3m² + 8m - 6).\n\n'
      'Step 1: Distribute the minus sign to every term of the second trinomial: '
      '(7m² - 4m + 10) + (-3m² - 8m + 6).\n\n'
      'Step 2: Combine the m²-terms: 7m² + (-3m²) = 4m².\n\n'
      'Step 3: Combine the m-terms: -4m + (-8m) = -12m.\n\n'
      'Step 4: Combine the constant terms: 10 + 6 = 16.\n\n'
      'Answer: (7m² - 4m + 10) - (3m² + 8m - 6) = 4m² - 12m + 16',
);
