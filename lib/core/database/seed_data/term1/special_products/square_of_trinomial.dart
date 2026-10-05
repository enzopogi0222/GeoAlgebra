import '../../seed_helpers.dart';
import 'square_of_trinomial_diagrams.dart';

const squareOfTrinomialLesson = LessonSeedData(
  title: 'Square of a Trinomial',
  overview:
  'Find the square of a trinomial (a 3-term expression) directly using a 6-term expansion '
      'pattern.',
  explanation:
  'Pattern: (a + b + c)² = a² + b² + c² + 2ab + 2ac + 2bc. Square each of the 3 terms, then '
      'double each of the 3 possible pairwise products — keeping the sign that results from '
      'multiplying the original terms.',
  example:
  'Example 1 (With coefficients): Square (a + 2b + 3c).\n\n'
      'Step 1: Square each term: a², (2b)² = 4b², (3c)² = 9c².\n\n'
      'Step 2: Double each pair: 2(a)(2b) = 4ab; 2(a)(3c) = 6ac; 2(2b)(3c) = 12bc.\n\n'
      'Answer: (a + 2b + 3c)² = a² + 4b² + 9c² + 4ab + 6ac + 12bc\n\n\n'

      'Example 2 (Two negative terms): Square (2x - 3y - 4z).\n\n'
      'Step 1: Square each term: (2x)² = 4x²; (-3y)² = 9y²; (-4z)² = 16z².\n\n'
      'Step 2: Double each pair, keeping signs: 2(2x)(-3y) = -12xy; 2(2x)(-4z) = -16xz; '
      '2(-3y)(-4z) = 24yz.\n\n'
      'Answer: (2x - 3y - 4z)² = 4x² + 9y² + 16z² - 12xy - 16xz + 24yz\n\n\n'

      'Example 3 (Constant as third term): Square (-2p + 4q + 5).\n\n'
      'Step 1: Square each term: (-2p)² = 4p²; (4q)² = 16q²; 5² = 25.\n\n'
      'Step 2: Double each pair: 2(-2p)(4q) = -16pq; 2(-2p)(5) = -20p; 2(4q)(5) = 40q.\n\n'
      'Answer: (-2p + 4q + 5)² = 4p² + 16q² - 16pq - 20p + 40q + 25',
  diagrams: squareOfTrinomialDiagrams,
);