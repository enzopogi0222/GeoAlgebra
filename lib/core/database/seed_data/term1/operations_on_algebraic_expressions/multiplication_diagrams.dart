import '../../../../../models/lesson.dart';

const multiplicationDiagrams = <LessonDiagram>[
  // Example 1 — 2d(d + 5) = 2d² + 10d
  LessonDiagram(
    exampleNumber: 1,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['2d'],
      'colLabels': ['d', '+5'],
      'cells': [
        ['2d²', '10d'],
      ],
      'caption':
      'Each cell is row × column: 2d · d = 2d² and 2d · 5 = 10d. '
          'Add the cells: 2d² + 10d.',
    },
  ),

  // Example 2 — −3x(4x − 2y + 8) = −12x² + 6xy − 24x
  LessonDiagram(
    exampleNumber: 2,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['−3x'],
      'colLabels': ['4x', '−2y', '+8'],
      'cells': [
        ['−12x²', '6xy', '−24x'],
      ],
      'caption':
      'Multiply −3x by each term: −12x², +6xy (negative × negative is '
          'positive) and −24x. Add the cells: −12x² + 6xy − 24x.',
    },
  ),

  // Example 3 — (x + 3)(x + 2) = x² + 5x + 6
  LessonDiagram(
    exampleNumber: 3,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['x', '+3'],
      'colLabels': ['x', '+2'],
      'cells': [
        ['x²', '2x'],
        ['3x', '6'],
      ],
      'caption':
      'The four cells are First (x²), Outer (2x), Inner (3x) and Last (6). '
          'The 2x and 3x are like terms: x² + 2x + 3x + 6 = x² + 5x + 6.',
    },
  ),

  // Example 4 — (x + 1)(x² + 2x + 3) = x³ + 3x² + 5x + 3
  LessonDiagram(
    exampleNumber: 4,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['x', '+1'],
      'colLabels': ['x²', '+2x', '+3'],
      'cells': [
        ['x³', '2x²', '3x'],
        ['x²', '2x', '3'],
      ],
      'caption':
      'Add all six cells, then combine like terms: 2x² + x² = 3x² and '
          '3x + 2x = 5x → x³ + 3x² + 5x + 3.',
    },
  ),
];