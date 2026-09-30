import '../../seed_helpers.dart';

const multiplicationLesson = LessonSeedData(
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
);
