import '../../seed_helpers.dart';
import 'algebraic_expressions_modeling_diagrams.dart';

const algebraicExpressionsModelingLesson = LessonSeedData(
  title: 'Algebraic Expressions',
  overview:
  'Learn how to translate real-life situations and word phrases into algebraic expressions '
      'using variables, constants, and operations.',
  explanation:
  'An algebraic expression combines numbers (constants), letters (variables), and operations '
      '(+, −, ×, ÷) to represent an unknown or changing quantity. Unlike an equation, it has no '
      'equals sign — it simply describes a value.\n\n'
      'Key vocabulary:\n'
      '• Variable — any letter or symbol that represents a number.\n'
      '   Example: in 2x + 5, x is the variable.\n\n'
      '• Constant — a number that has a fixed value that does not change.\n'
      '   Example: in 2x + 5, the 5 is the constant.\n\n'
      '• Algebraic term — a single number or letter, or the product of several numbers and/or '
      'letters. Terms are separated by + or − signs.\n'
      '   Example: in 4x² − 3x + 7, the three terms are 4x², −3x, and 7.\n\n'
      'To translate a word phrase into an expression:\n\n'
      '• 1. Identify the unknown quantity and assign it a variable (commonly x or n).\n\n'
      '• 2. Look for key words that signal an operation:\n'
      '   - Addition: sum, more than, increased by, plus, added by/to, total\n'
      '   - Subtraction: subtract, take away, diminish by/from, less/less than, difference, '
      'decreased by/from\n'
      '   - Multiplication: times, multiply, product, twice, thrice\n'
      '   - Division: quotient, divided by, divided into, ratio\n\n'
      '• 3. Write the expression in the same order the words suggest. Note: when "to" or "from" is '
      'added to a subtraction keyword, the order of the terms is reversed (e.g., "a number '
      'diminished by 2" is x − 2, but "2 diminished by a number" is 2 − x).',
  example:
  'Example 1 (Jeepney Fare 2024): The minimum jeepney fare is ₱13 for the first 4 kilometers, '
      'with a ₱3 increase for each subsequent kilometer. Find the fare for a 7-kilometer trip.\n\n'
      'Step 1: Let x = number of kilometers beyond the first 4.\n\n'
      'Step 2: Write the expression for the fare: 3x + 13.\n\n'
      'Step 3: Find x for a 7-km trip: x = 7 − 4 = 3.\n\n'
      'Step 4: Substitute x = 3 into the expression: 3(3) + 13.\n\n'
      'Step 5: Simplify: 9 + 13 = 22.\n\n'
      'Answer: ₱22\n\n\n'

      'Example 2 (Addition — "more than"): Translate "five more than twice a number" into an '
      'algebraic expression.\n\n'
      'Step 1: Let x = the number.\n\n'
      'Step 2: "Twice a number" means multiply by 2: 2x.\n\n'
      'Step 3: "Five more than" means add 5 to that result: 2x + 5.\n\n'
      'Answer: 2x + 5\n\n\n'

      'Example 3 (Subtraction — reversal rule): Translate both "a number diminished by 8" and '
      '"8 diminished by a number."\n\n'
      'Step 1: Let x = the number.\n\n'
      'Step 2: For "a number diminished by 8," the number comes first, so the order stays as '
      'written: x − 8.\n\n'
      'Step 3: For "8 diminished by a number," the number now comes after "by," so the order '
      'reverses: 8 − x.\n\n'
      'Answer: x − 8 and 8 − x — two different expressions, even though both use "diminished by."\n\n\n'

      'Example 4 (Comparison — age problem): Mark is 3 years older than his sister Ana. If Ana\'s '
      'age is a, write an expression for Mark\'s age, then find Mark\'s age if Ana is 12.\n\n'
      'Step 1: "3 years older than Ana\'s age" means add 3 to a: a + 3.\n\n'
      'Step 2: Write the expression: a + 3.\n\n'
      'Step 3: Substitute a = 12: 12 + 3.\n\n'
      'Step 4: Simplify: 15.\n\n'
      'Answer: Mark\'s age = a + 3; if Ana is 12, Mark is 15 years old.\n\n\n'

      'Example 5 (Multiplication — perimeter): A rectangular garden has length twice its width w. '
      'Write an expression for its perimeter, then find the perimeter if w = 5 meters.\n\n'
      'Step 1: Length = twice the width: 2w.\n\n'
      'Step 2: Recall the perimeter formula: P = 2(length) + 2(width).\n\n'
      'Step 3: Substitute the length: P = 2(2w) + 2(w).\n\n'
      'Step 4: Simplify: P = 4w + 2w = 6w.\n\n'
      'Step 5: Substitute w = 5: P = 6(5).\n\n'
      'Step 6: Simplify: P = 30.\n\n'
      'Answer: P = 6w; if w = 5 meters, the perimeter is 30 meters.\n\n\n'

      'Example 6 (Division — sharing equally): A cash prize of ₱500 is divided equally among n '
      'winners. Write an expression for each winner\'s share, then find the share if n = 4.\n\n'
      'Step 1: "Divided among" signals division.\n\n'
      'Step 2: Divide the total by the number of winners: 500 ÷ n.\n\n'
      'Step 3: Substitute n = 4: 500 ÷ 4.\n\n'
      'Step 4: Simplify: 125.\n\n'
      'Answer: 500/n; if n = 4 winners, each share is ₱125.',
  diagrams: algebraicExpressionsModelingDiagrams,
);