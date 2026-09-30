import '../../seed_helpers.dart';

const divisionLesson = LessonSeedData(
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
);
