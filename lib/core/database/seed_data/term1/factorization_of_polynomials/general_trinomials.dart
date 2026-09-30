import '../../seed_helpers.dart';

const generalTrinomialsLesson = LessonSeedData(
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
);
