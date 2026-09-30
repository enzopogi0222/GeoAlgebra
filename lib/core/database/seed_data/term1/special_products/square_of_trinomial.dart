import '../../seed_helpers.dart';

const squareOfTrinomialLesson = LessonSeedData(
  title: 'Square of a Trinomial',
  overview:
      'Square a three-term polynomial directly using the formula for the sum of the squares plus '
      'twice all pairwise products.',
  explanation:
      'Squaring a trinomial means multiplying (a + b + c) by itself. The pattern expands to '
      '6 terms:\n\n'
      '   (a + b + c)² = a² + b² + c² + 2ab + 2ac + 2bc\n\n'
      'In words:\n\n'
      '• 1. Square each of the three terms separately (a², b², c²).\n\n'
      '• 2. Add twice the product of every possible pair of terms: 2(first × second), '
      '2(first × third), and 2(second × third).\n\n'
      'If any terms in the original trinomial have negative signs, keep those signs when '
      'computing the pairwise products.',
  example:
      'Example 1 (All positive): Square (x + y + z).\n\n'
      'Step 1: Square each term: x², y², z².\n\n'
      'Step 2: Double each pairwise product: 2xy, 2xz, 2yz.\n\n'
      'Answer: (x + y + z)² = x² + y² + z² + 2xy + 2xz + 2yz\n\n\n'

      'Example 2 (With constants): Square (x + y + 2).\n\n'
      'Step 1: Square each term: x², y², 2² = 4.\n\n'
      'Step 2: Double each pair: 2(x)(y) = 2xy; 2(x)(2) = 4x; 2(y)(2) = 4y.\n\n'
      'Answer: (x + y + 2)² = x² + y² + 4 + 2xy + 4x + 4y\n\n\n'

      'Example 3 (Mixed signs): Square (a - b + c).\n\n'
      'Step 1: Square each term: a², (-b)² = b², c².\n\n'
      'Step 2: Double each pair: 2(a)(-b) = -2ab; 2(a)(c) = 2ac; 2(-b)(c) = -2bc.\n\n'
      'Answer: (a - b + c)² = a² + b² + c² - 2ab + 2ac - 2bc\n\n\n'

      'Example 4 (Coefficients): Square (2x - 3y + 4).\n\n'
      'Step 1: Square each term: (2x)² = 4x²; (-3y)² = 9y²; 4² = 16.\n\n'
      'Step 2: Double each pair: 2(2x)(-3y) = -12xy; 2(2x)(4) = 16x; 2(-3y)(4) = -24y.\n\n'
      'Answer: (2x - 3y + 4)² = 4x² + 9y² + 16 - 12xy + 16x - 24y',
);
