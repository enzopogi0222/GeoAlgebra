import '../../../../models/lesson.dart';
import '../../database_helper.dart';
import '../seed_helpers.dart';

class OperationsOnAlgebraicExpressionsLessons {
  static Future<void> seed(DatabaseHelper db) async {
    final t = await topicByTitle(db, 'Algebra', 'Operations on Algebraic Expressions');
    await db.deleteLessonsByTopic(t.id!);

    await db.insertLesson(Lesson(
      topicId: t.id,
      title: 'Addition and Subtraction of Monomials',
      overview:
      'Add and subtract monomials by identifying similar terms and combining their numerical '
          'coefficients.',
      explanation:
      'Two or more terms are called similar terms (or like terms) when they have the exact same '
          'variable(s) raised to the exact same exponent(s). Only the numerical coefficients may '
          'differ.\n\n'
          '   Example: 3x and -7x are similar terms (same variable x, same exponent 1). '
          '5x² and 5x are NOT similar terms, because the exponents on x are different.\n\n'
          'Rule for adding or subtracting monomials:\n\n'
          '• 1. Check that the terms are similar. Only similar terms can be combined — dissimilar '
          'terms are simply left as they are.\n\n'
          '• 2. Add or subtract only the numerical coefficients. The variable part (the literal '
          'coefficient) never changes.\n\n'
          '• 3. For subtraction, rewrite the operation as "adding the opposite" — change the sign '
          'of every term being subtracted, then add — and apply the same rules used for adding '
          'and subtracting integers.\n\n'
          'This is the same idea behind combining "3 apples + 5 apples = 8 apples": you can only '
          'combine quantities of the same kind of item, and the "kind" here is the variable part '
          'of the term.',
      example:
      'Example 1 (Adding similar monomials): Find the sum of 5x + 3x.\n\n'
          'Step 1: Check that the terms are similar: both have the variable x to the first power. ✔\n\n'
          'Step 2: Add the numerical coefficients: 5 + 3 = 8.\n\n'
          'Step 3: Keep the variable part the same: 8x.\n\n'
          'Answer: 5x + 3x = 8x\n\n\n'

          'Example 2 (Adding three monomials with mixed signs): Find the sum of 7a + (-12a) + 4a.\n\n'
          'Step 1: All three terms are similar (variable a, exponent 1).\n\n'
          'Step 2: Add the coefficients: 7 + (-12) + 4 = -1.\n\n'
          'Step 3: Attach the variable part: -1a, written as -a.\n\n'
          'Answer: 7a + (-12a) + 4a = -a\n\n\n'

          'Example 3 (Subtracting monomials): Find the difference of 9m² - 4m².\n\n'
          'Step 1: Both terms are similar (variable m, exponent 2).\n\n'
          'Step 2: Subtract the coefficients: 9 - 4 = 5.\n\n'
          'Step 3: Keep the variable part: 5m².\n\n'
          'Answer: 9m² - 4m² = 5m²\n\n\n'

          'Example 4 (Subtracting a negative monomial): Find the difference of -6ab - (-2ab).\n\n'
          'Step 1: Rewrite subtraction as adding the opposite: -6ab + 2ab.\n\n'
          'Step 2: Add the coefficients: -6 + 2 = -4.\n\n'
          'Step 3: Attach the variable part: -4ab.\n\n'
          'Answer: -6ab - (-2ab) = -4ab\n\n\n'

          'Example 5 (Dissimilar terms — cannot combine): Simplify 3x + 2y - 5x.\n\n'
          'Step 1: Identify which terms are similar: 3x and -5x are similar (both have variable x); '
          '2y is not similar to either, since its variable is different.\n\n'
          'Step 2: Combine only the similar terms: 3x - 5x = -2x.\n\n'
          'Step 3: Write the dissimilar term as is, since it has nothing to combine with: -2x + 2y.\n\n'
          'Answer: 3x + 2y - 5x = -2x + 2y',
    ));

    await db.insertLesson(Lesson(
      topicId: t.id,
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
    ));

    await db.insertLesson(Lesson(
      topicId: t.id,
      title: 'Laws of Exponents in Multiplication and Division of Monomials',
      overview:
      'Derive and apply the Product Rule, Quotient Rule, and the rule for negative exponents by '
          'expanding monomials into repeated multiplication.',
      explanation:
      'In an expression like x⁴, x is called the base and 4 is the exponent — it tells you how many '
          'times the base is used as a factor: x⁴ = x · x · x · x. Writing a power out this way is '
          'called its expanded form, and it is the key to understanding where the exponent rules '
          'come from.\n\n'
          'Product Rule (multiplying powers of the same base): xᵐ · xⁿ = xᵐ⁺ⁿ\n\n'
          'This comes directly from counting factors in expanded form — for example, x² · x³ '
          'expands to (x · x)(x · x · x), which is x used as a factor 5 times, or x⁵. So when '
          'multiplying powers with the same base, simply add the exponents and keep the base. For '
          'monomials with numerical coefficients, multiply the coefficients as ordinary numbers, '
          'then apply the Product Rule separately to each variable that appears in both factors.\n\n'
          'Quotient Rule (dividing powers of the same base): xᵐ ÷ xⁿ = xᵐ⁻ⁿ\n\n'
          'This comes from cancelling matching factors top and bottom in expanded form — for '
          'example, x⁵ ÷ x² expands to (x·x·x·x·x) ÷ (x·x); two x\'s cancel from the numerator and '
          'denominator, leaving x·x·x = x³. So when dividing powers with the same base, subtract '
          'the exponent of the divisor from the exponent of the dividend. Divide the numerical '
          'coefficients as ordinary numbers first.\n\n'
          'Negative Exponents: when the divisor\'s exponent is larger than the dividend\'s exponent, '
          'the Quotient Rule produces a negative exponent. A negative exponent means "take the '
          'reciprocal of the base and make the exponent positive": x⁻ⁿ = 1 / xⁿ. This happens '
          'because more factors of x remain in the denominator than in the numerator after '
          'cancelling, so the base stays on the bottom of the fraction instead of the top.',
      example:
      'Example 1 (Product Rule): Multiply x³ · x⁵.\n\n'
          'Step 1: The bases are the same (x), so add the exponents: 3 + 5 = 8.\n\n'
          'Answer: x³ · x⁵ = x⁸\n\n\n'

          'Example 2 (Product Rule with coefficients): Multiply (2a²b)(5a³b⁴).\n\n'
          'Step 1: Multiply the numerical coefficients: 2 · 5 = 10.\n\n'
          'Step 2: Apply the Product Rule to the a\'s: a² · a³ = a⁵.\n\n'
          'Step 3: Apply the Product Rule to the b\'s: b¹ · b⁴ = b⁵.\n\n'
          'Answer: (2a²b)(5a³b⁴) = 10a⁵b⁵\n\n\n'

          'Example 3 (Product Rule, negative coefficient): Multiply (-3m²n³)(4mn⁵).\n\n'
          'Step 1: Multiply the coefficients: -3 · 4 = -12.\n\n'
          'Step 2: Apply the Product Rule to the m\'s: m² · m¹ = m³.\n\n'
          'Step 3: Apply the Product Rule to the n\'s: n³ · n⁵ = n⁸.\n\n'
          'Answer: (-3m²n³)(4mn⁵) = -12m³n⁸\n\n\n'

          'Example 4 (Quotient Rule): Divide y⁹ ÷ y⁴.\n\n'
          'Step 1: The bases are the same (y), so subtract the exponents: 9 - 4 = 5.\n\n'
          'Answer: y⁹ ÷ y⁴ = y⁵\n\n\n'

          'Example 5 (Quotient Rule with coefficients): Divide -18p³q⁵ by 6pq².\n\n'
          'Step 1: Divide the coefficients: -18 ÷ 6 = -3.\n\n'
          'Step 2: Apply the Quotient Rule to the p\'s: p³ ÷ p¹ = p².\n\n'
          'Step 3: Apply the Quotient Rule to the q\'s: q⁵ ÷ q² = q³.\n\n'
          'Answer: -18p³q⁵ ÷ 6pq² = -3p²q³\n\n\n'

          'Example 6 (Negative exponent): Divide 5c² ÷ c⁶.\n\n'
          'Step 1: Subtract the exponents: 2 - 6 = -4, giving 5c⁻⁴.\n\n'
          'Step 2: A negative exponent means the base belongs in the denominator: c⁻⁴ = 1/c⁴.\n\n'
          'Answer: 5c² ÷ c⁶ = 5/c⁴\n\n\n'

          'Example 7 (Negative exponent with two variables): Divide -20x⁴y² by -4x⁷y.\n\n'
          'Step 1: Divide the coefficients: -20 ÷ -4 = 5.\n\n'
          'Step 2: Apply the Quotient Rule to the x\'s: x⁴ ÷ x⁷ = x⁻³, which becomes 1/x³.\n\n'
          'Step 3: Apply the Quotient Rule to the y\'s: y² ÷ y¹ = y¹.\n\n'
          'Answer: -20x⁴y² ÷ (-4x⁷y) = 5y/x³',
    ));

    await db.insertLesson(Lesson(
      topicId: t.id,
      title: 'Multiplication of Monomials, Binomials, and Multinomials',
      overview:
      'Multiply simple monomials and binomials with simple binomials and multinomials, using '
          'the distributive property.',
      explanation:
      'The distributive property states that a(b + c) = ab + ac — every term inside the '
          'parentheses gets multiplied by the term outside. This is how a monomial is multiplied '
          'across a binomial or multinomial: distribute the monomial to each term, then apply the '
          'rules for multiplying monomials (multiply coefficients, add exponents of the same base).\n\n'
          'For multiplying two binomials together, the same distributive idea is applied twice, '
          'often remembered using FOIL:\n\n'
          '• First — multiply the first terms of each binomial\n\n'
          '• Outer — multiply the outer terms\n\n'
          '• Inner — multiply the inner terms\n\n'
          '• Last — multiply the last terms of each binomial\n\n'
          'After applying FOIL, combine any resulting like terms to simplify. For a binomial times a '
          'multinomial (3 or more terms), distribute each term of the binomial across every term of '
          'the longer expression the same way.',
      example:
      'Example 1 (Monomial times binomial): Find the product of 2d and (d + 5).\n\n'
          'Step 1: Distribute 2d to each term of the binomial: 2d(d) + 2d(5).\n\n'
          'Step 2: Multiply each term: 2d(d) = 2d², and 2d(5) = 10d.\n\n'
          'Step 3: Write the result: 2d² + 10d.\n\n'
          'Answer: (2d)(d + 5) = 2d² + 10d\n\n\n'

          'Example 2 (Monomial times trinomial): Find the product of −3x and (4x − 2y + 8).\n\n'
          'Step 1: Distribute −3x to each term: (−3x)(4x) + (−3x)(−2y) + (−3x)(8).\n\n'
          'Step 2: Multiply each term: (−3x)(4x) = −12x², (−3x)(−2y) = 6xy, (−3x)(8) = −24x.\n\n'
          'Step 3: Write the result: −12x² + 6xy − 24x.\n\n'
          'Answer: (−3x)(4x − 2y + 8) = −12x² + 6xy − 24x\n\n\n'

          'Example 3 (Binomial times binomial with FOIL): Find the product of (x + 3) and (x + 2).\n\n'
          'Step 1 (First): Multiply the first terms: x · x = x².\n\n'
          'Step 2 (Outer): Multiply the outer terms: x · 2 = 2x.\n\n'
          'Step 3 (Inner): Multiply the inner terms: 3 · x = 3x.\n\n'
          'Step 4 (Last): Multiply the last terms: 3 · 2 = 6.\n\n'
          'Step 5: Combine like terms: x² + 2x + 3x + 6 = x² + 5x + 6.\n\n'
          'Answer: (x + 3)(x + 2) = x² + 5x + 6\n\n\n'

          'Example 4 (Binomial times multinomial): Find the product of (x + 1) and (x² + 2x + 3).\n\n'
          'Step 1: Distribute x to each term of the trinomial: x(x²) + x(2x) + x(3).\n\n'
          'Step 2: Distribute 1 to each term of the trinomial: 1(x²) + 1(2x) + 1(3).\n\n'
          'Step 3: Combine both distributions: x³ + 2x² + 3x + x² + 2x + 3.\n\n'
          'Step 4: Combine like terms: x³ + 3x² + 5x + 3.\n\n'
          'Answer: (x + 1)(x² + 2x + 3) = x³ + 3x² + 5x + 3',
    ));

    await db.insertLesson(Lesson(
      topicId: t.id,
      title: 'Division of Polynomials by Monomials and Binomials',
      overview:
      'Divide a binomial or multinomial by a monomial term by term, and divide a multinomial by a '
          'binomial using long division.',
      explanation:
      'Dividing a polynomial by a monomial: divide each term of the polynomial by the monomial '
          'separately, then simplify each resulting term using the rules for dividing monomials '
          '(divide the coefficients, subtract the exponents of matching bases). Once every term has '
          'been divided, write the results together to form the quotient.\n\n'
          'Dividing a multinomial by a binomial uses long division, which works the same way as '
          'long division with whole numbers:\n\n'
          '• 1. Divide the first term of the dividend by the first term of the divisor. Write this '
          'as the first term of the quotient.\n\n'
          '• 2. Multiply that quotient term by the entire divisor, and write the result underneath '
          'the dividend.\n\n'
          '• 3. Subtract this product from the dividend, then bring down the next term if needed.\n\n'
          '• 4. Repeat the process using the new expression as the dividend, until nothing is left '
          'to bring down.\n\n'
          '• 5. Check the answer by multiplying the quotient by the divisor — the result should '
          'match the original dividend.',
      example:
      'Example 1 (Polynomial ÷ monomial): Divide (12x³ + 8x²) by 4x.\n\n'
          'Step 1: Divide each term by 4x separately: (12x³ ÷ 4x) + (8x² ÷ 4x).\n\n'
          'Step 2: Simplify each term: 12x³ ÷ 4x = 3x², and 8x² ÷ 4x = 2x.\n\n'
          'Answer: (12x³ + 8x²) ÷ 4x = 3x² + 2x\n\n\n'

          'Example 2 (Trinomial ÷ monomial): Divide (-18a⁴b² + 24a³b³ - 6a²b) by 6a²b.\n\n'
          'Step 1: Divide each term by 6a²b separately.\n\n'
          'Step 2: Simplify each term: -18a⁴b² ÷ 6a²b = -3a²b; 24a³b³ ÷ 6a²b = 4ab²; '
          '-6a²b ÷ 6a²b = -1.\n\n'
          'Answer: (-18a⁴b² + 24a³b³ - 6a²b) ÷ 6a²b = -3a²b + 4ab² - 1\n\n\n'

          'Example 3 (Trinomial ÷ binomial, long division): Divide (x² + 9x + 20) by (x + 4).\n\n'
          'Step 1: Divide the first term of the dividend by the first term of the divisor: '
          'x² ÷ x = x. This is the first term of the quotient.\n\n'
          'Step 2: Multiply x by the divisor (x + 4): x² + 4x.\n\n'
          'Step 3: Subtract this from the dividend: (x² + 9x) - (x² + 4x) = 5x, then bring down '
          'the +20, giving a new expression of 5x + 20.\n\n'
          'Step 4: Divide the first term of the new expression by the first term of the divisor: '
          '5x ÷ x = 5. This is the next term of the quotient.\n\n'
          'Step 5: Multiply 5 by the divisor (x + 4): 5x + 20.\n\n'
          'Step 6: Subtract: (5x + 20) - (5x + 20) = 0. Nothing is left, so the division is exact.\n\n'
          'Step 7: Check: (x + 5)(x + 4) = x² + 9x + 20 ✔\n\n'
          'Answer: (x² + 9x + 20) ÷ (x + 4) = x + 5\n\n\n'

          'Example 4 (Trinomial ÷ binomial with a negative term): Divide (x² - 3x - 18) by (x - 6).\n\n'
          'Step 1: Divide the first terms: x² ÷ x = x.\n\n'
          'Step 2: Multiply x by the divisor (x - 6): x² - 6x.\n\n'
          'Step 3: Subtract: (x² - 3x) - (x² - 6x) = 3x, then bring down the -18, giving '
          '3x - 18.\n\n'
          'Step 4: Divide the first terms of the new expression: 3x ÷ x = 3.\n\n'
          'Step 5: Multiply 3 by the divisor (x - 6): 3x - 18.\n\n'
          'Step 6: Subtract: (3x - 18) - (3x - 18) = 0.\n\n'
          'Step 7: Check: (x + 3)(x - 6) = x² - 3x - 18 ✔\n\n'
          'Answer: (x² - 3x - 18) ÷ (x - 6) = x + 3',
    ));
  }
}