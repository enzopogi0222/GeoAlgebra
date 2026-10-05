import '../../../../../models/lesson.dart';

const squareOfBinomialDiagrams = <LessonDiagram>[
  // Example 1 — (x + 3)² = x² + 6x + 9
  LessonDiagram(
    exampleNumber: 1,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['x', '+3'],
      'colLabels': ['x', '+3'],
      'cells': [
        ['x²', '3x'],
        ['3x', '9'],
      ],
      'caption':
          'The squares sit on the diagonal (x² and 9). The two matching cells '
          '3x + 3x make the middle term 6x → x² + 6x + 9.',
    },
  ),

  // Example 2 — (4k − 5)² = 16k² − 40k + 25
  LessonDiagram(
    exampleNumber: 2,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['4k', '−5'],
      'colLabels': ['4k', '−5'],
      'cells': [
        ['16k²', '−20k'],
        ['−20k', '25'],
      ],
      'caption':
          'The diagonal gives 16k² and 25 (a negative squared is positive). '
          'The matching cells −20k + (−20k) = −40k → 16k² − 40k + 25.',
    },
  ),

  // Example 3 — (4x − 3y)² = 16x² − 24xy + 9y²
  LessonDiagram(
    exampleNumber: 3,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['4x', '−3y'],
      'colLabels': ['4x', '−3y'],
      'cells': [
        ['16x²', '−12xy'],
        ['−12xy', '9y²'],
      ],
      'caption':
          'The diagonal gives 16x² and 9y². The matching cells '
          '−12xy + (−12xy) = −24xy → 16x² − 24xy + 9y².',
    },
  ),
];
