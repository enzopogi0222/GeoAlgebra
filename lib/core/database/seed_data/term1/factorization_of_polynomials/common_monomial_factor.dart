import '../../seed_helpers.dart';

const commonMonomialFactorLesson = LessonSeedData(
  title: 'Factoring Polynomials with a Common Monomial Factor',
  overview:
  'Reverse the distributive property by factoring out the greatest common monomial factor '
      'from every term of a polynomial.',
  explanation:
  'The distributive property a(b + c) = ab + ac also works backwards: ab + ac = a(b + c). '
      'To factor completely: 1. Find the GCF (greatest common factor) of all terms. 2. Write '
      'the GCF outside a set of parentheses, and what remains of each term inside. 3. Check by '
      'multiplying back.',
  example:
  'Example 1: Factor 4x² + 6x.\n\n'
      'Step 1: The GCF of 4x² and 6x is 2x.\n\n'
      'Step 2: Divide each term by 2x: 2x and 3.\n\n'
      'Answer: 4x² + 6x = 2x(2x + 3)\n\n\n'

      'Example 2 (Three terms): Factor 15m⁴ + 10m³ - 25m².\n\n'
      'Step 1: The GCF of 15, 10, 25 is 5; the lowest power of m is m². GCF = 5m².\n\n'
      'Step 2: Divide each term: 3m², 2m, -5.\n\n'
      'Answer: 15m⁴ + 10m³ - 25m² = 5m²(3m² + 2m - 5)\n\n\n'

      'Example 3 (Negative leading term): Factor -8x³ + 12x².\n\n'
      'Step 1: Factor out a negative GCF, -4x²: (-8x³ ÷ -4x²) = 2x; (12x² ÷ -4x²) = -3.\n\n'
      'Step 2: Check: (-4x²)(2x - 3) = -8x³ + 12x². ✔\n\n'
      'Answer: -8x³ + 12x² = -4x²(2x - 3)',
);