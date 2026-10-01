import '../../seed_helpers.dart';

const problemSolvingLesson = LessonSeedData(
  title: 'Solving Problems Involving Factoring Polynomials',
  overview:
  'Apply factoring to find missing dimensions and to solve polynomial equations in real-life '
      'problems.',
  explanation:
  'Two common problem types:\n\n'
      '• Finding dimensions: area = length × width, so factoring the area polynomial gives '
      'possible dimensions.\n\n'
      '• Solving equations: write in standard form (= 0), factor, set each factor to zero, '
      'and solve. A product is zero only if at least one factor is zero. In word problems, '
      'reject any solution that isn\'t physically reasonable (e.g., a negative length).',
  example:
  'Example 1 (Finding dimensions): A solar panel\'s area is (7x² + x) cm². Find possible '
      'dimensions.\n\n'
      'Step 1: Factor: 7x² + x = x(7x + 1).\n\n'
      'Answer: The dimensions can be x cm and (7x + 1) cm.\n\n\n'

      'Example 2 (Solving by factoring): Solve x² + 5x + 6 = 0.\n\n'
      'Step 1: Factor: (x + 2)(x + 3) = 0.\n\n'
      'Step 2: Set each factor to zero and solve: x = -2 or x = -3.\n\n'
      'Answer: x = -2 or x = -3\n\n\n'

      'Example 3 (Word problem): A rectangle\'s length is 3 ft more than its width, and its '
      'area is 40 ft². Find its dimensions.\n\n'
      'Step 1: Let w = width; length = w + 3. Then w(w + 3) = 40, or w² + 3w - 40 = 0.\n\n'
      'Step 2: Factor and solve: (w + 8)(w - 5) = 0, so w = -8 or w = 5. Reject w = -8 (a '
      'width cannot be negative).\n\n'
      'Answer: Width = 5 ft, length = 8 ft (check: 5 × 8 = 40 ✔)',
);