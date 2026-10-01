import '../../seed_helpers.dart';

const generalTrinomialsLesson = LessonSeedData(
  title: 'Factoring General Trinomials',
  overview: 'Factor trinomials of the form ax² + bx + c by undoing the FOIL method.',
  explanation:
  'For x² + bx + c: find two numbers that multiply to c and add to b — those are the last '
      'terms of the two binomial factors. Sign clues: if c is positive, both numbers share '
      'the sign of b; if c is negative, the numbers have different signs.\n\n'
      'For ax² + bx + c (a ≠ 1): use grouping — multiply a and c, find two numbers that '
      'multiply to ac and add to b, rewrite the middle term using them, then factor by '
      'grouping. Always check the result with FOIL.',
  example:
  'Example 1: Factor x² + 3x + 2.\n\n'
      'Step 1: Find two numbers that multiply to 2 and add to 3: 1 and 2.\n\n'
      'Answer: x² + 3x + 2 = (x + 1)(x + 2)\n\n\n'

      'Example 2 (Negative last term): Factor x² + 2x - 15.\n\n'
      'Step 1: c is negative, so the numbers have different signs. Find two that multiply to '
      '-15 and add to 2: 5 and -3.\n\n'
      'Answer: x² + 2x - 15 = (x + 5)(x - 3)\n\n\n'

      'Example 3 (Coefficient of x² is not 1): Factor 2x² + 7x + 3.\n\n'
      'Step 1: Multiply a·c: 2 · 3 = 6; find two numbers that multiply to 6 and add to 7: '
      '1 and 6.\n\n'
      'Step 2: Rewrite and group: 2x² + x + 6x + 3 → x(2x + 1) + 3(2x + 1) → (2x + 1)(x + 3).\n\n'
      'Answer: 2x² + 7x + 3 = (2x + 1)(x + 3)',
);