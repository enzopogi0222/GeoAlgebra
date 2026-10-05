import '../../../../../models/lesson.dart';

const productOfSumAndDifferenceDiagrams = <LessonDiagram>[
  // Example 1 — (x + 3)(x − 3) = x² − 9
  LessonDiagram(
    exampleNumber: 1,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['x', '−3'],
      'colLabels': ['x', '+3'],
      'cells': [
        ['x²', '3x'],
        ['−3x', '−9'],
      ],
      'caption':
          'The two middle cells, 3x and −3x, add up to zero and cancel. '
          'Only the squares are left: x² − 9.',
    },
  ),

  // Example 2 — (2y − 5)(2y + 5) = 4y² − 25
  LessonDiagram(
    exampleNumber: 2,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['2y', '−5'],
      'colLabels': ['2y', '+5'],
      'cells': [
        ['4y²', '10y'],
        ['−10y', '−25'],
      ],
      'caption':
          'The middle cells 10y and −10y cancel, leaving 4y² − 25.',
    },
  ),

  // Example 3 — (−a² − xy)(−a² + xy) = a⁴ − x²y²
  LessonDiagram(
    exampleNumber: 3,
    type: DiagramType.areaModel,
    data: {
      'rowLabels': ['−a²', '−xy'],
      'colLabels': ['−a²', '+xy'],
      'cells': [
        ['a⁴', '−a²xy'],
        ['a²xy', '−x²y²'],
      ],
      'caption':
          'The middle cells −a²xy and a²xy cancel, leaving a⁴ − x²y².',
    },
  ),
];
