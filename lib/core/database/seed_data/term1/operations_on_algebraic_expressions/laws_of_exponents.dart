import '../../seed_helpers.dart';
import 'laws_of_exponents_diagrams.dart';

const lawsOfExponentsLesson = LessonSeedData(
  title: 'Laws of Exponents in Multiplication and Division of Monomials',
  overview:
      'Derive and apply the Product Rule, Quotient Rule, and the rule for negative exponents by '
      'expanding monomials into repeated multiplication.',
  explanation:
      'In an expression like x⁴, x is called the base and 4 is the exponent — it tells you how many '
      'times the base is used as a factor: x⁴ = x · x · x · x. Writing a power out this way is '
      'called its expanded form, and it is the key to understanding where the exponent rules '
      'come from.\n\n'
      'Product Rule (multiplying powers of the same base): xᵐ · xⁿ = xᵐ⁺ⁿ\n\n'
      'This comes directly from counting factors in expanded form — for example, x² · x³ '
      'expands to (x · x)(x · x · x), which is x used as a factor 5 times, or x⁵. So when '
      'multiplying powers with the same base, simply add the exponents and keep the base. For '
      'monomials with numerical coefficients, multiply the coefficients as ordinary numbers, '
      'then apply the Product Rule separately to each variable that appears in both factors.\n\n'
      'Quotient Rule (dividing powers of the same base): xᵐ ÷ xⁿ = xᵐ⁻ⁿ\n\n'
      'This comes from cancelling matching factors top and bottom in expanded form — for '
      'example, x⁵ ÷ x² expands to (x·x·x·x·x) ÷ (x·x); two x\'s cancel from the numerator and '
      'denominator, leaving x·x·x = x³. So when dividing powers with the same base, subtract '
      'the exponent of the divisor from the exponent of the dividend. Divide the numerical '
      'coefficients as ordinary numbers first.\n\n'
      'Negative Exponents: when the divisor\'s exponent is larger than the dividend\'s exponent, '
      'the Quotient Rule produces a negative exponent. A negative exponent means "take the '
      'reciprocal of the base and make the exponent positive": x⁻ⁿ = 1 / xⁿ. This happens '
      'because more factors of x remain in the denominator than in the numerator after '
      'cancelling, so the base stays on the bottom of the fraction instead of the top.',
  example:
      'Example 1 (Product Rule): Multiply x³ · x⁵.\n\n'
      'Step 1: The bases are the same (x), so add the exponents: 3 + 5 = 8.\n\n'
      'Answer: x³ · x⁵ = x⁸\n\n\n'

      'Example 2 (Product Rule with coefficients): Multiply (2a²b)(5a³b⁴).\n\n'
      'Step 1: Multiply the numerical coefficients: 2 · 5 = 10.\n\n'
      'Step 2: Apply the Product Rule to the a\'s: a² · a³ = a⁵.\n\n'
      'Step 3: Apply the Product Rule to the b\'s: b¹ · b⁴ = b⁵.\n\n'
      'Answer: (2a²b)(5a³b⁴) = 10a⁵b⁵\n\n\n'

      'Example 3 (Product Rule, negative coefficient): Multiply (-3m²n³)(4mn⁵).\n\n'
      'Step 1: Multiply the coefficients: -3 · 4 = -12.\n\n'
      'Step 2: Apply the Product Rule to the m\'s: m² · m¹ = m³.\n\n'
      'Step 3: Apply the Product Rule to the n\'s: n³ · n⁵ = n⁸.\n\n'
      'Answer: (-3m²n³)(4mn⁵) = -12m³n⁸\n\n\n'

      'Example 4 (Quotient Rule): Divide y⁹ ÷ y⁴.\n\n'
      'Step 1: The bases are the same (y), so subtract the exponents: 9 - 4 = 5.\n\n'
      'Answer: y⁹ ÷ y⁴ = y⁵\n\n\n'

      'Example 5 (Quotient Rule with coefficients): Divide -18p³q⁵ by 6pq².\n\n'
      'Step 1: Divide the coefficients: -18 ÷ 6 = -3.\n\n'
      'Step 2: Apply the Quotient Rule to the p\'s: p³ ÷ p¹ = p².\n\n'
      'Step 3: Apply the Quotient Rule to the q\'s: q⁵ ÷ q² = q³.\n\n'
      'Answer: -18p³q⁵ ÷ 6pq² = -3p²q³\n\n\n'

      'Example 6 (Negative exponent): Divide 5c² ÷ c⁶.\n\n'
      'Step 1: Subtract the exponents: 2 - 6 = -4, giving 5c⁻⁴.\n\n'
      'Step 2: A negative exponent means the base belongs in the denominator: c⁻⁴ = 1/c⁴.\n\n'
      'Answer: 5c² ÷ c⁶ = 5/c⁴\n\n\n'

      'Example 7 (Negative exponent with two variables): Divide -20x⁴y² by -4x⁷y.\n\n'
      'Step 1: Divide the coefficients: -20 ÷ -4 = 5.\n\n'
      'Step 2: Apply the Quotient Rule to the x\'s: x⁴ ÷ x⁷ = x⁻³, which becomes 1/x³.\n\n'
      'Step 3: Apply the Quotient Rule to the y\'s: y² ÷ y¹ = y¹.\n\n'
      'Answer: -20x⁴y² ÷ (-4x⁷y) = 5y/x³',
  diagrams: lawsOfExponentsDiagrams,
);
