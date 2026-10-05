import '../../../../../models/lesson.dart';

const additionSubtractionMonomialsDiagrams = <LessonDiagram>[
  // Example 1 — 5x + 3x = 8x
  LessonDiagram(
    exampleNumber: 1,
    type: DiagramType.algebraTiles,
    data: {
      'tiles': [
        {'kind': 'x', 'isPositive': true},
        {'kind': 'x', 'isPositive': true},
        {'kind': 'x', 'isPositive': true},
        {'kind': 'x', 'isPositive': true},
        {'kind': 'x', 'isPositive': true},
        {'kind': 'x', 'isPositive': true},
        {'kind': 'x', 'isPositive': true},
        {'kind': 'x', 'isPositive': true},
      ],
      'caption': '5x + 3x = 8x: five x-tiles and three x-tiles make eight x-tiles.',
    },
  ),

  // Example 2 — 7a + (−12a) + 4a = −a
  LessonDiagram(
    exampleNumber: 2,
    type: DiagramType.algebraTiles,
    data: {
      'tiles': [
        {'kind': 'x', 'isPositive': false, 'label': 'a'},
      ],
      'caption':
      '7 + 4 = 11 positive a-tiles cancel 11 of the 12 negative a-tiles '
          '(zero pairs), leaving one negative tile → −a.',
    },
  ),

  // Example 3 — 9m² − 4m² = 5m²
  LessonDiagram(
    exampleNumber: 3,
    type: DiagramType.algebraTiles,
    data: {
      'tiles': [
        {'kind': 'xSquared', 'isPositive': true, 'label': 'm²'},
        {'kind': 'xSquared', 'isPositive': true, 'label': 'm²'},
        {'kind': 'xSquared', 'isPositive': true, 'label': 'm²'},
        {'kind': 'xSquared', 'isPositive': true, 'label': 'm²'},
        {'kind': 'xSquared', 'isPositive': true, 'label': 'm²'},
      ],
      'caption':
      'Start with nine m²-tiles, take away four → five m²-tiles left: 5m².',
    },
  ),

  // Example 4 — −6ab − (−2ab) = −4ab
  LessonDiagram(
    exampleNumber: 4,
    type: DiagramType.algebraTiles,
    data: {
      'tiles': [
        {'kind': 'x', 'isPositive': false, 'label': 'ab'},
        {'kind': 'x', 'isPositive': false, 'label': 'ab'},
        {'kind': 'x', 'isPositive': false, 'label': 'ab'},
        {'kind': 'x', 'isPositive': false, 'label': 'ab'},
      ],
      'caption':
      'Start with six negative ab-tiles; subtracting −2ab removes two of '
          'them, leaving four → −4ab.',
    },
  ),

  // Example 5 — 3x + 2y − 5x = −2x + 2y
  LessonDiagram(
    exampleNumber: 5,
    type: DiagramType.algebraTiles,
    data: {
      'tiles': [
        {'kind': 'x', 'isPositive': false},
        {'kind': 'x', 'isPositive': false},
      ],
      'caption':
      'The three x-tiles cancel with three of the five −x tiles, leaving −2x. '
          '2y has no matching tile (it is not similar), so it stays as + 2y → −2x + 2y.',
    },
  ),
];