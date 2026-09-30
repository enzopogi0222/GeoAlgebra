import '../../seed_helpers.dart';

const cubeOfBinomialLesson = LessonSeedData(
  title: 'Cube of a Binomial',
  overview:
      'Cube a binomial directly using a four-term pattern built from cubes and products of the terms.',
  explanation:
      'Cubing a binomial means multiplying it by itself 3 times: (a ± b)³. The resulting polynomial '
      'is a four-term polynomial that follows these patterns:\n\n'
      '   (a + b)³ = a³ + 3a²b + 3ab² + b³\n\n'
      '   (a - b)³ = a³ - 3a²b + 3ab² - b³\n\n'
      'The four terms are formed as follows:\n\n'
      '• 1. The cube of the first term (a³).\n\n'
      '• 2. Three times the square of the first term multiplied by the second term (3a²b).\n\n'
      '• 3. Three times the first term multiplied by the square of the second term (3ab²).\n\n'
      '• 4. The cube of the second term (b³).\n\n'
      'Notice that for (a - b)³, the signs alternate: +, −, +, −.',
  example:
      'Example 1 (Sum): Cube (x + 2).\n\n'
      'Step 1: Cube the first term: x³ = x³.\n\n'
      'Step 2: 3 × (first)² × (second): 3(x²)(2) = 6x².\n\n'
      'Step 3: 3 × (first) × (second)²: 3(x)(2²) = 3(x)(4) = 12x.\n\n'
      'Step 4: Cube the second term: 2³ = 8.\n\n'
      'Answer: (x + 2)³ = x³ + 6x² + 12x + 8\n\n\n'

      'Example 2 (Difference): Cube (y - 3).\n\n'
      'Step 1: Cube the first term: y³.\n\n'
      'Step 2: 3 × (first)² × (second): 3(y²)(-3) = -9y².\n\n'
      'Step 3: 3 × (first) × (second)²: 3(y)(-3)² = 3(y)(9) = 27y.\n\n'
      'Step 4: Cube the second term: (-3)³ = -27.\n\n'
      'Answer: (y - 3)³ = y³ - 9y² + 27y - 27\n\n\n'

      'Example 3 (Coefficients): Cube (2a + 3b).\n\n'
      'Step 1: Cube the first term: (2a)³ = 8a³.\n\n'
      'Step 2: 3(2a)²(3b) = 3(4a²)(3b) = 36a²b.\n\n'
      'Step 3: 3(2a)(3b)² = 3(2a)(9b²) = 54ab².\n\n'
      'Step 4: Cube the second term: (3b)³ = 27b³.\n\n'
      'Answer: (2a + 3b)³ = 8a³ + 36a²b + 54ab² + 27b³\n\n\n'

      'Example 4 (Negative first term): Cube (-x + 4).\n\n'
      'Step 1: Cube the first term: (-x)³ = -x³.\n\n'
      'Step 2: 3(-x)²(4) = 3(x²)(4) = 12x².\n\n'
      'Step 3: 3(-x)(4²) = 3(-x)(16) = -48x.\n\n'
      'Step 4: Cube the second term: 4³ = 64.\n\n'
      'Answer: (-x + 4)³ = -x³ + 12x² - 48x + 64',
);
