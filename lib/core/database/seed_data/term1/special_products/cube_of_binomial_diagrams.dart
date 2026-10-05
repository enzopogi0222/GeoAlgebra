import '../../../../../models/lesson.dart';

// Cube = square first, then multiply by the binomial again:
// rows = the squared binomial, columns = the remaining binomial.
const cubeOfBinomialDiagrams = <LessonDiagram>[
  // Example 1 — (x + 2)³ = x³ + 6x² + 12x + 8
  LessonDiagram(
    exampleNumber: 1,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['x²', '+4x', '+4'],
      'colLabels': ['x', '+2'],
      'cells': [
        ['x³', '2x²'],
        ['4x²', '8x'],
        ['4x', '8'],
      ],
      'caption':
          'Rows are (x + 2)² = x² + 4x + 4; columns are the last (x + 2). '
          'Add the cells and combine like terms: 2x² + 4x² = 6x², 8x + 4x = 12x '
          '→ x³ + 6x² + 12x + 8.',
    },
  ),

  // Example 2 — (2y − 1)³ = 8y³ − 12y² + 6y − 1
  LessonDiagram(
    exampleNumber: 2,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['4y²', '−4y', '+1'],
      'colLabels': ['2y', '−1'],
      'cells': [
        ['8y³', '−4y²'],
        ['−8y²', '4y'],
        ['2y', '−1'],
      ],
      'caption':
          'Rows are (2y − 1)² = 4y² − 4y + 1; columns are the last (2y − 1). '
          'Combine like terms: −4y² − 8y² = −12y², 4y + 2y = 6y '
          '→ 8y³ − 12y² + 6y − 1.',
    },
  ),

  // Example 3 — (3x + 4y)³ = 27x³ + 108x²y + 144xy² + 64y³
  LessonDiagram(
    exampleNumber: 3,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['9x²', '+24xy', '+16y²'],
      'colLabels': ['3x', '+4y'],
      'cells': [
        ['27x³', '36x²y'],
        ['72x²y', '96xy²'],
        ['48xy²', '64y³'],
      ],
      'caption':
          'Rows are (3x + 4y)² = 9x² + 24xy + 16y²; columns are the last (3x + 4y). '
          'Combine like terms: 36x²y + 72x²y = 108x²y, 96xy² + 48xy² = 144xy² '
          '→ 27x³ + 108x²y + 144xy² + 64y³.',
    },
  ),
];
