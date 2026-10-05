import '../../seed_helpers.dart';
import 'square_of_binomial_diagrams.dart';

const squareOfBinomialLesson = LessonSeedData(
  title: 'Square of a Binomial',
  overview:
  'Find the square of a binomial directly, without multiplying it out term by term, using a '
      'repeating pattern.',
  explanation:
  'Pattern: (a ± b)² = a² ± 2ab + b², where a is the first term and b is the second. The '
      'result — a perfect square trinomial — always has 3 terms: the square of the first '
      'term, twice their product, and the square of the second term (always positive).',
  example:
  'Example 1 (Sum): Square (x + 3).\n\n'
      'Step 1: Square each term: x², 3² = 9.\n\n'
      'Step 2: Double their product: 2(x)(3) = 6x.\n\n'
      'Answer: (x + 3)² = x² + 6x + 9\n\n\n'

      'Example 2 (Difference, coefficients): Square (4k - 5).\n\n'
      'Step 1: Square each term: (4k)² = 16k²; 5² = 25.\n\n'
      'Step 2: Double their product, keep the sign: 2(4k)(-5) = -40k.\n\n'
      'Answer: (4k - 5)² = 16k² - 40k + 25\n\n\n'

      'Example 3 (Two variables): Square (4x - 3y).\n\n'
      'Step 1: Square each term: (4x)² = 16x²; (3y)² = 9y².\n\n'
      'Step 2: Double their product: 2(4x)(-3y) = -24xy.\n\n'
      'Answer: (4x - 3y)² = 16x² - 24xy + 9y²',
  diagrams: squareOfBinomialDiagrams,
);