import '../../seed_helpers.dart';

const commonMonomialFactorLesson = LessonSeedData(
  title: 'Factoring Polynomials with a Common Monomial Factor',
  overview:
      'Reverse the distributive property by factoring out the greatest common monomial factor '
      'from every term of a polynomial.',
  explanation:
      'A factor is a number or polynomial that is multiplied by another number or polynomial to '
      'form a product. Factoring is the reverse of multiplying: you start with the product and '
      'end with the factors.\n\n'
      'The distributive property says a(b + c) = ab + ac. Since it is an equality, it also '
      'works backwards: ab + ac = a(b + c). Using it this way is called factoring a polynomial '
      'with a common monomial factor.\n\n'
      'A polynomial is factored completely when it is written as a product of polynomials that '
      'cannot be factored any further. The first thing to look for is the greatest common '
      'factor (GCF), which is the product of all the prime factors that the terms share.\n\n'
      'Steps:\n\n'
      '• 1. Break down every term into prime factors.\n\n'
      '• 2. Look for the factors that appear in every single term. Their product is the GCF.\n\n'
      '• 3. Write the GCF in front of a set of parentheses, and put what is left of each term '
      'inside the parentheses.\n\n'
      '• 4. Check by multiplying the GCF back through the parentheses. You should get the '
      'original polynomial.\n\n'
      'Area model: if a rectangle has an area of 4x² + 6x, its side lengths are the factors '
      'of that area. Since the GCF is 2x, the sides are 2x and (2x + 3).',
  example:
      'Example 1: Factor 4x² + 6x.\n\n'
      'Step 1: Break each term into prime factors: 4x² = (2)(2)(x)(x) and 6x = (2)(3)(x).\n\n'
      'Step 2: The factors common to both terms are 2 and x, so the GCF is 2x.\n\n'
      'Step 3: Write 2x outside the parentheses and put the leftovers inside: '
      '4x² ÷ 2x = 2x and 6x ÷ 2x = 3.\n\n'
      'Answer: 4x² + 6x = 2x(2x + 3)\n\n\n'

      'Example 2: Factor 12a³b² - 18a²b.\n\n'
      'Step 1: The GCF of the coefficients 12 and 18 is 6.\n\n'
      'Step 2: The lowest power of a in both terms is a², and the lowest power of b is b. '
      'So the GCF is 6a²b.\n\n'
      'Step 3: Divide each term by the GCF: 12a³b² ÷ 6a²b = 2ab and 18a²b ÷ 6a²b = 3.\n\n'
      'Answer: 12a³b² - 18a²b = 6a²b(2ab - 3)\n\n\n'

      'Example 3 (Three terms): Factor 15m⁴ + 10m³ - 25m².\n\n'
      'Step 1: The GCF of 15, 10, and 25 is 5, and the lowest power of m is m².\n\n'
      'Step 2: The GCF is 5m².\n\n'
      'Step 3: Divide each term: 15m⁴ ÷ 5m² = 3m², 10m³ ÷ 5m² = 2m, -25m² ÷ 5m² = -5.\n\n'
      'Answer: 15m⁴ + 10m³ - 25m² = 5m²(3m² + 2m - 5)\n\n\n'

      'Example 4 (Negative leading term): Factor -8x³ + 12x².\n\n'
      'Step 1: The GCF of 8 and 12 is 4, and the lowest power of x is x². It is neater to '
      'factor out a negative GCF when the first term is negative: -4x².\n\n'
      'Step 2: Divide each term by -4x²: -8x³ ÷ -4x² = 2x and 12x² ÷ -4x² = -3.\n\n'
      'Step 3: Check: (-4x²)(2x) = -8x³ and (-4x²)(-3) = 12x². ✔\n\n'
      'Answer: -8x³ + 12x² = -4x²(2x - 3)',
);
