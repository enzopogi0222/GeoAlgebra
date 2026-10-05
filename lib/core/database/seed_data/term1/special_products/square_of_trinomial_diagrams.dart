import '../../../../../models/lesson.dart';

// A 3×3 grid: each cell is row × column, and the answer is the sum of all
// nine cells. The squares sit on the diagonal; every other product appears twice.
const squareOfTrinomialDiagrams = <LessonDiagram>[
  // Example 1 — (a + 2b + 3c)²
  LessonDiagram(
    exampleNumber: 1,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['a', '+2b', '+3c'],
      'colLabels': ['a', '+2b', '+3c'],
      'cells': [
        ['a²', '2ab', '3ac'],
        ['2ab', '4b²', '6bc'],
        ['3ac', '6bc', '9c²'],
      ],
      'caption':
          'Diagonal: a² + 4b² + 9c². Each other product appears twice: '
          '2ab + 2ab = 4ab, 3ac + 3ac = 6ac, 6bc + 6bc = 12bc.',
    },
  ),

  // Example 2 — (2x − 3y − 4z)²
  LessonDiagram(
    exampleNumber: 2,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['2x', '−3y', '−4z'],
      'colLabels': ['2x', '−3y', '−4z'],
      'cells': [
        ['4x²', '−6xy', '−8xz'],
        ['−6xy', '9y²', '12yz'],
        ['−8xz', '12yz', '16z²'],
      ],
      'caption':
          'Diagonal: 4x² + 9y² + 16z². Doubled cells: −6xy + (−6xy) = −12xy, '
          '−8xz + (−8xz) = −16xz, 12yz + 12yz = 24yz.',
    },
  ),

  // Example 3 — (−2p + 4q + 5)²
  LessonDiagram(
    exampleNumber: 3,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['−2p', '+4q', '+5'],
      'colLabels': ['−2p', '+4q', '+5'],
      'cells': [
        ['4p²', '−8pq', '−10p'],
        ['−8pq', '16q²', '20q'],
        ['−10p', '20q', '25'],
      ],
      'caption':
          'Diagonal: 4p² + 16q² + 25. Doubled cells: −8pq + (−8pq) = −16pq, '
          '−10p + (−10p) = −20p, 20q + 20q = 40q.',
    },
  ),
];
