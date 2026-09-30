import '../../seed_helpers.dart';

const problemSolvingLesson = LessonSeedData(
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
);
