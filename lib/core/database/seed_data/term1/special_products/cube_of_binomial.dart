import '../../seed_helpers.dart';
import 'cube_of_binomial_diagrams.dart';

const cubeOfBinomialLesson = LessonSeedData(
  title: 'Cube of a Binomial',
  overview:
  'Find the cube of a binomial directly using a 4-term expansion pattern, instead of '
      'multiplying the binomial by itself three times.',
  explanation:
  'Pattern: (a + b)³ = a³ + 3a²b + 3ab² + b³, and (a - b)³ = a³ - 3a²b + 3ab² - b³ (signs '
      'alternate: +, -, +, -). Build each term: cube the first term; 3× the square of the '
      'first term times the second; 3× the first term times the square of the second; cube '
      'the second term.',
  example:
  'Example 1 (Sum): Cube (x + 2).\n\n'
      'Step 1: x³, 3(x²)(2) = 6x², 3(x)(2²) = 12x, 2³ = 8.\n\n'
      'Answer: (x + 2)³ = x³ + 6x² + 12x + 8\n\n\n'

      'Example 2 (Difference): Cube (2y - 1).\n\n'
      'Step 1: (2y)³ = 8y³, 3(2y)²(1) = 12y², 3(2y)(1²) = 6y, 1³ = 1.\n\n'
      'Step 2: Apply alternating signs for a difference.\n\n'
      'Answer: (2y - 1)³ = 8y³ - 12y² + 6y - 1\n\n\n'

      'Example 3 (Two variables): Cube (3x + 4y).\n\n'
      'Step 1: (3x)³ = 27x³, 3(3x)²(4y) = 108x²y, 3(3x)(4y)² = 144xy², (4y)³ = 64y³.\n\n'
      'Answer: (3x + 4y)³ = 27x³ + 108x²y + 144xy² + 64y³',
  diagrams: cubeOfBinomialDiagrams,
);