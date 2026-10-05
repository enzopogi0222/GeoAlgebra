import '../../seed_helpers.dart';
import 'addition_subtraction_monomials_diagrams.dart';

const additionSubtractionMonomialsLesson = LessonSeedData(
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
  diagrams: additionSubtractionMonomialsDiagrams,
);
