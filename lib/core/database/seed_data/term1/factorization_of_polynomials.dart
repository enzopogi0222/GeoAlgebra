import '../../../../models/lesson.dart';
import '../../database_helper.dart';
import '../seed_helpers.dart';

class FactorizationOfPolynomialsLessons {
  static Future<void> seed(DatabaseHelper db) async {
    final t = await topicByTitle(db, 'Algebra', 'Factorization of Polynomials');
    await db.deleteLessonsByTopic(t.id!);

    await db.insertLesson(Lesson(
      topicId: t.id,
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
    ));

    await db.insertLesson(Lesson(
      topicId: t.id,
      title: 'Factoring the Difference of Two Squares',
      overview:
      'Factor a binomial made of two perfect squares separated by a minus sign into the sum '
          'and difference of the square roots.',
      explanation:
      'In the Special Products lesson, you learned that (a + b)(a - b) = a² - b². Factoring the '
          'difference of two squares simply reads that pattern in reverse:\n\n'
          '   a² - b² = (a + b)(a - b)\n\n'
          'To use it:\n\n'
          '• 1. Check that there are exactly two terms, that both are perfect squares, and that '
          'they are separated by a minus sign.\n\n'
          '• 2. Find the square root of each term. These are a and b.\n\n'
          '• 3. Write (a + b)(a - b).\n\n'
          'Important notes:\n\n'
          '• A sum of two squares, such as x² + 9, cannot be factored using real numbers.\n\n'
          '• Always look for a common monomial factor first. After taking it out, a difference of '
          'squares may appear.\n\n'
          '• Sometimes one of the new factors is itself a difference of squares. Keep factoring '
          'until nothing more can be factored (completely).',
      example:
      'Example 1: Factor x² - 4.\n\n'
          'Step 1: x² is a perfect square (a = x) and 4 is a perfect square (b = 2), separated by '
          'a minus sign.\n\n'
          'Step 2: Write (a + b)(a - b).\n\n'
          'Answer: x² - 4 = (x + 2)(x - 2)\n\n\n'

          'Example 2 (Coefficients): Factor 9y² - 25.\n\n'
          'Step 1: 9y² = (3y)² and 25 = 5², so a = 3y and b = 5.\n\n'
          'Answer: 9y² - 25 = (3y + 5)(3y - 5)\n\n\n'

          'Example 3 (Two variables): Factor 49m² - 64n².\n\n'
          'Step 1: 49m² = (7m)² and 64n² = (8n)², so a = 7m and b = 8n.\n\n'
          'Answer: 49m² - 64n² = (7m + 8n)(7m - 8n)\n\n\n'

          'Example 4 (Common factor first): Factor 3x² - 48.\n\n'
          'Step 1: Take out the common monomial factor 3: 3(x² - 16).\n\n'
          'Step 2: x² - 16 is a difference of two squares: x² - 4² = (x + 4)(x - 4).\n\n'
          'Answer: 3x² - 48 = 3(x + 4)(x - 4)\n\n\n'

          'Example 5 (Factor completely): Factor 16x⁴ - 81.\n\n'
          'Step 1: 16x⁴ = (4x²)² and 81 = 9², so 16x⁴ - 81 = (4x² + 9)(4x² - 9).\n\n'
          'Step 2: The factor 4x² - 9 is again a difference of two squares: '
          '(2x)² - 3² = (2x + 3)(2x - 3).\n\n'
          'Step 3: The factor 4x² + 9 is a sum of squares, so it cannot be factored further.\n\n'
          'Answer: 16x⁴ - 81 = (4x² + 9)(2x + 3)(2x - 3)',
    ));

    await db.insertLesson(Lesson(
      topicId: t.id,
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
          '(a - b)².',
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
    ));

    await db.insertLesson(Lesson(
      topicId: t.id,
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
    ));

    await db.insertLesson(Lesson(
      topicId: t.id,
      title: 'Factoring General Trinomials',
      overview:
      'Factor trinomials of the form ax² + bx + c by undoing the FOIL method.',
      explanation:
      'You already know how to multiply two binomials using FOIL. Factoring a general trinomial '
          'means undoing that multiplication: you start with the product and end with the '
          'factors.\n\n'
          'Case 1: x² + bx + c (the coefficient of x² is 1)\n\n'
          'Look for two numbers that:\n\n'
          '• multiply to give c (the last term), and\n\n'
          '• add to give b (the coefficient of the middle term).\n\n'
          'If those numbers are m and n, then x² + bx + c = (x + m)(x + n).\n\n'
          'Sign clues: if c is positive, m and n have the same sign (both positive if b is '
          'positive, both negative if b is negative). If c is negative, m and n have different '
          'signs.\n\n'
          'Case 2: ax² + bx + c (the coefficient of x² is not 1)\n\n'
          'Use grouping, which is the reverse of FOIL:\n\n'
          '• 1. Multiply a and c.\n\n'
          '• 2. Find two numbers that multiply to give ac and add to give b.\n\n'
          '• 3. Rewrite the middle term as the sum of two terms using those numbers.\n\n'
          '• 4. Factor the first two terms and the last two terms separately, then factor out '
          'the common binomial.\n\n'
          'You can always check your answer by multiplying the factors with FOIL.',
      example:
      'Example 1: Factor x² + 3x + 2.\n\n'
          'Step 1: Find two numbers that multiply to 2 and add to 3: 1 and 2.\n\n'
          'Step 2: Write the factors: (x + 1)(x + 2).\n\n'
          'Step 3: Check with FOIL: x² + 2x + x + 2 = x² + 3x + 2. ✔\n\n'
          'Answer: x² + 3x + 2 = (x + 1)(x + 2)\n\n\n'

          'Example 2: Factor x² + 7x + 12.\n\n'
          'Step 1: Find two numbers that multiply to 12 and add to 7: 3 and 4.\n\n'
          'Answer: x² + 7x + 12 = (x + 3)(x + 4)\n\n\n'

          'Example 3 (Negative middle term): Factor x² - 9x + 20.\n\n'
          'Step 1: The last term is positive and the middle term is negative, so both numbers are '
          'negative. Find two negatives that multiply to 20 and add to -9: -4 and -5.\n\n'
          'Answer: x² - 9x + 20 = (x - 4)(x - 5)\n\n\n'

          'Example 4 (Negative last term): Factor x² + 2x - 15.\n\n'
          'Step 1: The last term is negative, so the numbers have different signs. Find two '
          'numbers that multiply to -15 and add to 2: 5 and -3.\n\n'
          'Answer: x² + 2x - 15 = (x + 5)(x - 3)\n\n\n'

          'Example 5 (Coefficient of x² is not 1): Factor 2x² + 7x + 3.\n\n'
          'Step 1: Multiply a and c: 2 · 3 = 6.\n\n'
          'Step 2: Find two numbers that multiply to 6 and add to 7: 1 and 6.\n\n'
          'Step 3: Rewrite the middle term: 2x² + x + 6x + 3.\n\n'
          'Step 4: Group and factor each pair: x(2x + 1) + 3(2x + 1).\n\n'
          'Step 5: Factor out the common binomial (2x + 1): (2x + 1)(x + 3).\n\n'
          'Step 6: Check with FOIL: 2x² + 6x + x + 3 = 2x² + 7x + 3. ✔\n\n'
          'Answer: 2x² + 7x + 3 = (2x + 1)(x + 3)',
    ));

    await db.insertLesson(Lesson(
      topicId: t.id,
      title: 'Solving Problems Involving Factoring Polynomials',
      overview:
      'Apply factoring to find missing dimensions and to solve polynomial equations in real-life '
          'problems.',
      explanation:
      'Problems that involve factoring can be solved using Polya\'s four-phase method:\n\n'
          '• 1. Understand the problem — what is given and what is being asked?\n\n'
          '• 2. Devise a plan — decide which factoring method fits.\n\n'
          '• 3. Carry out the plan — do the factoring and the computation.\n\n'
          '• 4. Look back — check that the answer makes sense in the problem.\n\n'
          'Two kinds of problems are common:\n\n'
          'Finding dimensions: the area of a rectangle equals length × width, so factoring the '
          'area polynomial gives possible expressions for the dimensions.\n\n'
          'Solving polynomial equations: write the equation in standard form (one side equal to '
          'zero), factor the polynomial, set each factor equal to zero, and solve each resulting '
          'equation. This works because if a product is zero, at least one of its factors must be '
          'zero. Not every polynomial equation can be solved by factoring.\n\n'
          'In word problems, always check whether each solution is reasonable. For example, a '
          'length cannot be negative.',
      example:
      'Example 1 (Finding dimensions): Mandy\'s calculator is powered by a solar panel whose area '
          'is (7x² + x) cm². Find possible expressions for its dimensions.\n\n'
          'Step 1: The area is length × width, so factor 7x² + x.\n\n'
          'Step 2: The GCF is x: 7x² + x = x(7x + 1).\n\n'
          'Answer: The dimensions can be x cm and (7x + 1) cm.\n\n\n'

          'Example 2 (Missing dimension): A rectangular garden has an area of (x² + 8x + 15) m² '
          'and a width of (x + 3) m. Find its length.\n\n'
          'Step 1: Factor the area: x² + 8x + 15 = (x + 3)(x + 5).\n\n'
          'Step 2: One factor is the width (x + 3), so the other factor is the length.\n\n'
          'Answer: The length is (x + 5) m.\n\n\n'

          'Example 3 (Solving by factoring): Solve x² + 5x + 6 = 0.\n\n'
          'Step 1: The equation is already in standard form.\n\n'
          'Step 2: Factor: (x + 2)(x + 3) = 0.\n\n'
          'Step 3: Set each factor equal to zero: x + 2 = 0 or x + 3 = 0.\n\n'
          'Step 4: Solve each: x = -2 or x = -3.\n\n'
          'Answer: x = -2 or x = -3\n\n\n'

          'Example 4 (Difference of squares): Solve x² - 9 = 0.\n\n'
          'Step 1: Factor the difference of two squares: (x + 3)(x - 3) = 0.\n\n'
          'Step 2: Set each factor equal to zero: x + 3 = 0 or x - 3 = 0.\n\n'
          'Answer: x = -3 or x = 3\n\n\n'

          'Example 5 (Word problem): The length of a rectangle is 3 feet more than its width, and '
          'its area is 40 square feet. Find its dimensions.\n\n'
          'Step 1 (Understand): Let w be the width. Then the length is w + 3, and the area is '
          'w(w + 3) = 40.\n\n'
          'Step 2 (Plan): Write in standard form: w² + 3w - 40 = 0, then factor.\n\n'
          'Step 3 (Carry out): (w + 8)(w - 5) = 0, so w = -8 or w = 5.\n\n'
          'Step 4 (Look back): A width cannot be negative, so reject w = -8. The width is 5 ft and '
          'the length is 5 + 3 = 8 ft. Check: 5 × 8 = 40. ✔\n\n'
          'Answer: The rectangle is 5 feet wide and 8 feet long.',
    ));
  }
}