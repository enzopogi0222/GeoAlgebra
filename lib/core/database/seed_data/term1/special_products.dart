import '../../../../models/lesson.dart';
import '../../database_helper.dart';
import '../seed_helpers.dart';

class SpecialProductsLessons {
  static Future<void> seed(DatabaseHelper db) async {
    final t = await topicByTitle(db, 'Algebra', 'Special Products');
    await db.deleteLessonsByTopic(t.id!);

    await db.insertLesson(Lesson(
      topicId: t.id,
      title: 'Square of a Binomial',
      overview:
      'Find the square of a binomial directly, without multiplying it out term by term, using a '
          'repeating pattern.',
      explanation:
      'Special products are called "special" because their results follow a predictable pattern, '
          'so the product can be written down directly instead of working through long '
          'multiplication every time.\n\n'
          'For the square of a binomial, the pattern is:\n\n'
          '   (a ± b)² = a² ± 2ab + b²\n\n'
          'where a is the first term and b is the second term of the binomial. The result of '
          'squaring a binomial is called a perfect square trinomial, and it always has 3 terms:\n\n'
          '• 1. The square of the first term.\n\n'
          '• 2. Twice the product of the first and second terms (keeping the sign between the '
          'original terms).\n\n'
          '• 3. The square of the second term (always positive, since squaring removes the sign).',
      example:
      'Example 1 (Sum): Square (x + 3).\n\n'
          'Step 1: Square the first term: x² = x².\n\n'
          'Step 2: Multiply the first and second terms, then double it: 2(x)(3) = 6x.\n\n'
          'Step 3: Square the second term: 3² = 9.\n\n'
          'Answer: (x + 3)² = x² + 6x + 9\n\n\n'

          'Example 2 (Difference): Square (y - 2).\n\n'
          'Step 1: Square the first term: y² = y².\n\n'
          'Step 2: Multiply the first and second terms, then double it: 2(y)(-2) = -4y.\n\n'
          'Step 3: Square the second term: (-2)² = 4.\n\n'
          'Answer: (y - 2)² = y² - 4y + 4\n\n\n'

          'Example 3 (Leading coefficient): Square (4k + 5).\n\n'
          'Step 1: Square the first term: (4k)² = 16k².\n\n'
          'Step 2: Multiply the first and second terms, then double it: 2(4k)(5) = 40k.\n\n'
          'Step 3: Square the second term: 5² = 25.\n\n'
          'Answer: (4k + 5)² = 16k² + 40k + 25\n\n\n'

          'Example 4 (Negative first term): Square (-9n + 1).\n\n'
          'Step 1: Square the first term: (-9n)² = 81n².\n\n'
          'Step 2: Multiply the first and second terms, then double it: 2(-9n)(1) = -18n.\n\n'
          'Step 3: Square the second term: 1² = 1.\n\n'
          'Answer: (-9n + 1)² = 81n² - 18n + 1\n\n\n'

          'Example 5 (Two variables): Square (4x - 3y).\n\n'
          'Step 1: Square the first term: (4x)² = 16x².\n\n'
          'Step 2: Multiply the first and second terms, then double it: 2(4x)(-3y) = -24xy.\n\n'
          'Step 3: Square the second term: (-3y)² = 9y².\n\n'
          'Answer: (4x - 3y)² = 16x² - 24xy + 9y²',
    ));

    await db.insertLesson(Lesson(
      topicId: t.id,
      title: 'Product of Sum and Difference of Two Terms',
      overview:
      'Multiply a sum and a difference of the same two terms directly, producing a two-term '
          'result called a difference of two squares.',
      explanation:
      'When one factor is the sum of two terms and the other factor is the difference of the '
          'exact same two terms, the middle terms always cancel out. The pattern is:\n\n'
          '   (a + b)(a - b) = a² - b²\n\n'
          'where a is the first term and b is the second term. The result is called a difference '
          'of two squares, and it always has exactly 2 terms (no middle term), because the +ab and '
          '-ab from expanding cancel each other. To apply the pattern: square the first term, '
          'square the second term, and subtract.',
      example:
      'Example 1: Multiply (x + 3)(x - 3).\n\n'
          'Step 1: Identify the first term (x) and second term (3).\n\n'
          'Step 2: Square the first term: x².\n\n'
          'Step 3: Square the second term: 3² = 9.\n\n'
          'Step 4: Subtract: x² - 9.\n\n'
          'Answer: (x + 3)(x - 3) = x² - 9\n\n\n'

          'Example 2 (Leading coefficient): Multiply (2y - 5)(2y + 5).\n\n'
          'Step 1: Identify the first term (2y) and second term (5).\n\n'
          'Step 2: Square the first term: (2y)² = 4y².\n\n'
          'Step 3: Square the second term: 5² = 25.\n\n'
          'Step 4: Subtract: 4y² - 25.\n\n'
          'Answer: (2y - 5)(2y + 5) = 4y² - 25\n\n\n'

          'Example 3 (Fraction): Multiply (1/3 + 4x)(1/3 - 4x).\n\n'
          'Step 1: Identify the first term (1/3) and second term (4x).\n\n'
          'Step 2: Square the first term: (1/3)² = 1/9.\n\n'
          'Step 3: Square the second term: (4x)² = 16x².\n\n'
          'Step 4: Subtract: 1/9 - 16x².\n\n'
          'Answer: (1/3 + 4x)(1/3 - 4x) = 1/9 - 16x²\n\n\n'

          'Example 4 (Negative first term): Multiply (-a² - xy)(-a² + xy).\n\n'
          'Step 1: Identify the first term (-a²) and second term (xy).\n\n'
          'Step 2: Square the first term: (-a²)² = a⁴.\n\n'
          'Step 3: Square the second term: (xy)² = x²y².\n\n'
          'Step 4: Subtract: a⁴ - x²y².\n\n'
          'Answer: (-a² - xy)(-a² + xy) = a⁴ - x²y²',
    ));

    await db.insertLesson(Lesson(
      topicId: t.id,
      title: 'Cube of a Binomial',
      overview:
      'Find the cube of a binomial directly using a 4-term expansion pattern, instead of '
          'multiplying the binomial by itself three times.',
      explanation:
      'The cube of a binomial always expands into exactly 4 terms, following this pattern:\n\n'
          '   (a + b)³ = a³ + 3a²b + 3ab² + b³\n\n'
          '   (a - b)³ = a³ - 3a²b + 3ab² - b³\n\n'
          'where a is the first term and b is the second term. Notice the pattern in the signs for '
          'the difference case: they alternate (+, -, +, -). To build each term:\n\n'
          '• 1. Cube the first term.\n\n'
          '• 2. Take 3 times the square of the first term, times the second term.\n\n'
          '• 3. Take 3 times the first term, times the square of the second term.\n\n'
          '• 4. Cube the second term.',
      example:
      'Example 1 (Sum): Cube (x + 2).\n\n'
          'Step 1: Cube the first term: x³.\n\n'
          'Step 2: 3 times the square of the first term, times the second term: 3(x²)(2) = 6x².\n\n'
          'Step 3: 3 times the first term, times the square of the second term: 3(x)(2²) = 12x.\n\n'
          'Step 4: Cube the second term: 2³ = 8.\n\n'
          'Answer: (x + 2)³ = x³ + 6x² + 12x + 8\n\n\n'

          'Example 2 (Difference): Cube (2y - 1).\n\n'
          'Step 1: Cube the first term: (2y)³ = 8y³.\n\n'
          'Step 2: 3 times the square of the first term, times the second term: 3(2y)²(1) = 12y².\n\n'
          'Step 3: 3 times the first term, times the square of the second term: 3(2y)(1²) = 6y.\n\n'
          'Step 4: Cube the second term: 1³ = 1.\n\n'
          'Step 5: Apply the alternating signs for a difference: +, -, +, -.\n\n'
          'Answer: (2y - 1)³ = 8y³ - 12y² + 6y - 1\n\n\n'

          'Example 3 (Two variables): Cube (3x + 4y).\n\n'
          'Step 1: Cube the first term: (3x)³ = 27x³.\n\n'
          'Step 2: 3 times the square of the first term, times the second term: 3(3x)²(4y) = 108x²y.\n\n'
          'Step 3: 3 times the first term, times the square of the second term: 3(3x)(4y)² = 144xy².\n\n'
          'Step 4: Cube the second term: (4y)³ = 64y³.\n\n'
          'Answer: (3x + 4y)³ = 27x³ + 108x²y + 144xy² + 64y³\n\n\n'

          'Example 4 (Squared first term): Cube (b² - 3).\n\n'
          'Step 1: Cube the first term: (b²)³ = b⁶.\n\n'
          'Step 2: 3 times the square of the first term, times the second term: 3(b²)²(3) = 9b⁴.\n\n'
          'Step 3: 3 times the first term, times the square of the second term: 3(b²)(3²) = 27b².\n\n'
          'Step 4: Cube the second term: 3³ = 27.\n\n'
          'Step 5: Apply the alternating signs for a difference: +, -, +, -.\n\n'
          'Answer: (b² - 3)³ = b⁶ - 9b⁴ + 27b² - 27',
    ));

    await db.insertLesson(Lesson(
      topicId: t.id,
      title: 'Square of a Trinomial',
      overview:
      'Find the square of a trinomial (a 3-term expression) directly using a 6-term expansion '
          'pattern.',
      explanation:
      'Squaring a trinomial produces 6 terms: the square of each of the 3 terms, plus twice the '
          'product of each possible pair of terms. The pattern is:\n\n'
          '   (a + b + c)² = a² + b² + c² + 2ab + 2ac + 2bc\n\n'
          'where a, b, and c are the first, second, and third terms. To build the answer '
          'systematically:\n\n'
          '• 1. Square the first term.\n\n'
          '• 2. Square the second term.\n\n'
          '• 3. Square the third term.\n\n'
          '• 4. Multiply the first and second terms, then double it.\n\n'
          '• 5. Multiply the first and third terms, then double it.\n\n'
          '• 6. Multiply the second and third terms, then double it.\n\n'
          'Each cross term keeps the sign that results from multiplying its two original terms '
          '(for example, a negative term multiplied by a positive term gives a negative cross term).',
      example:
      'Example 1 (All positive): Square (x + y + z).\n\n'
          'Step 1: Square each term: x², y², z².\n\n'
          'Step 2: Double each pairwise product: 2(x)(y) = 2xy; 2(x)(z) = 2xz; 2(y)(z) = 2yz.\n\n'
          'Answer: (x + y + z)² = x² + y² + z² + 2xy + 2xz + 2yz\n\n\n'

          'Example 2 (With coefficients): Square (a + 2b + 3c).\n\n'
          'Step 1: Square each term: a², (2b)² = 4b², (3c)² = 9c².\n\n'
          'Step 2: Double each pairwise product: 2(a)(2b) = 4ab; 2(a)(3c) = 6ac; '
          '2(2b)(3c) = 12bc.\n\n'
          'Answer: (a + 2b + 3c)² = a² + 4b² + 9c² + 4ab + 6ac + 12bc\n\n\n'

          'Example 3 (Two negative terms): Square (2x - 3y - 4z).\n\n'
          'Step 1: Square each term: (2x)² = 4x², (-3y)² = 9y², (-4z)² = 16z².\n\n'
          'Step 2: Double each pairwise product, keeping the sign from multiplying the original '
          'terms: 2(2x)(-3y) = -12xy; 2(2x)(-4z) = -16xz; 2(-3y)(-4z) = 24yz.\n\n'
          'Answer: (2x - 3y - 4z)² = 4x² + 9y² + 16z² - 12xy - 16xz + 24yz\n\n\n'

          'Example 4 (Constant as third term): Square (-2p + 4q + 5).\n\n'
          'Step 1: Square each term: (-2p)² = 4p², (4q)² = 16q², 5² = 25.\n\n'
          'Step 2: Double each pairwise product: 2(-2p)(4q) = -16pq; 2(-2p)(5) = -20p; '
          '2(4q)(5) = 40q.\n\n'
          'Answer: (-2p + 4q + 5)² = 4p² + 16q² - 16pq - 20p + 40q + 25',
    ));
  }
}