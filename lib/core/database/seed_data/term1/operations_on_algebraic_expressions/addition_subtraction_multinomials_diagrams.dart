import '../../../../../models/lesson.dart';

const additionSubtractionMultinomialsDiagrams = <LessonDiagram>[
  // Example 1 — (4b − 5) + (−9b + 2) = −5b − 3
  LessonDiagram(
    exampleNumber: 1,
    type: DiagramType.algebraTiles,
    data: {
      'rows': [
        {
          'label': '4b − 5',
          'tiles': [
            {'kind': 'x', 'isPositive': true, 'label': 'b', 'count': 4},
            {'kind': 'unit', 'isPositive': false, 'count': 5},
          ],
        },
        {
          'label': '+ (−9b + 2)',
          'tiles': [
            {'kind': 'x', 'isPositive': false, 'label': 'b', 'count': 9},
            {'kind': 'unit', 'isPositive': true, 'count': 2},
          ],
        },
        {
          'label': '= −5b − 3',
          'tiles': [
            {'kind': 'x', 'isPositive': false, 'label': 'b', 'count': 5},
            {'kind': 'unit', 'isPositive': false, 'count': 3},
          ],
        },
      ],
      'caption':
      'Positive and negative tiles of the same kind cancel in pairs: '
          '4 pairs of b-tiles and 2 pairs of 1-tiles.',
    },
  ),

  // Example 2 — (8x² + 3x) − (2x² − 6x) = 6x² + 9x
  LessonDiagram(
    exampleNumber: 2,
    type: DiagramType.algebraTiles,
    data: {
      'rows': [
        {
          'label': '8x² + 3x',
          'tiles': [
            {'kind': 'xSquared', 'isPositive': true, 'count': 8},
            {'kind': 'x', 'isPositive': true, 'count': 3},
          ],
        },
        {
          'label': '− (2x² − 6x)',
          'tiles': [
            {'kind': 'xSquared', 'isPositive': true, 'count': 2},
            {'kind': 'x', 'isPositive': false, 'count': 6},
          ],
        },
        {
          'label': '= 6x² + 9x',
          'tiles': [
            {'kind': 'xSquared', 'isPositive': true, 'count': 6},
            {'kind': 'x', 'isPositive': true, 'count': 9},
          ],
        },
      ],
      'caption':
      'Take away 2 x²-tiles → 6 left. Taking away 6 negative x-tiles is the '
          'same as adding 6 positive ones: 3 + 6 = 9.',
    },
  ),

  // Example 3 — (2a − 5b + 6c) + (−a + 3b − 9c) = a − 2b − 3c
  LessonDiagram(
    exampleNumber: 3,
    type: DiagramType.algebraTiles,
    data: {
      'rows': [
        {
          'label': '2a − 5b + 6c',
          'tiles': [
            {'kind': 'x', 'isPositive': true, 'label': 'a', 'count': 2},
            {'kind': 'x', 'isPositive': false, 'label': 'b', 'count': 5},
            {'kind': 'x', 'isPositive': true, 'label': 'c', 'count': 6},
          ],
        },
        {
          'label': '+ (−a + 3b − 9c)',
          'tiles': [
            {'kind': 'x', 'isPositive': false, 'label': 'a', 'count': 1},
            {'kind': 'x', 'isPositive': true, 'label': 'b', 'count': 3},
            {'kind': 'x', 'isPositive': false, 'label': 'c', 'count': 9},
          ],
        },
        {
          'label': '= a − 2b − 3c',
          'tiles': [
            {'kind': 'x', 'isPositive': true, 'label': 'a', 'count': 1},
            {'kind': 'x', 'isPositive': false, 'label': 'b', 'count': 2},
            {'kind': 'x', 'isPositive': false, 'label': 'c', 'count': 3},
          ],
        },
      ],
      'caption':
      'Combine each kind of tile on its own: a-tiles, b-tiles and c-tiles '
          'never cancel with each other.',
    },
  ),

  // Example 4 — (7m² − 4m + 10) − (3m² + 8m − 6) = 4m² − 12m + 16
  LessonDiagram(
    exampleNumber: 4,
    type: DiagramType.algebraTiles,
    data: {
      'rows': [
        {
          'label': '7m² − 4m + 10',
          'tiles': [
            {'kind': 'xSquared', 'isPositive': true, 'label': 'm²', 'count': 7},
            {'kind': 'x', 'isPositive': false, 'label': 'm', 'count': 4},
            {'kind': 'unit', 'isPositive': true, 'count': 10},
          ],
        },
        {
          'label': '− (3m² + 8m − 6)',
          'tiles': [
            {'kind': 'xSquared', 'isPositive': true, 'label': 'm²', 'count': 3},
            {'kind': 'x', 'isPositive': true, 'label': 'm', 'count': 8},
            {'kind': 'unit', 'isPositive': false, 'count': 6},
          ],
        },
        {
          'label': '= 4m² − 12m + 16',
          'tiles': [
            {'kind': 'xSquared', 'isPositive': true, 'label': 'm²', 'count': 4},
            {'kind': 'x', 'isPositive': false, 'label': 'm', 'count': 12},
            {'kind': 'unit', 'isPositive': true, 'count': 16},
          ],
        },
      ],
      'caption':
      'Subtracting a tile flips its sign: take away 3 m²-tiles (7 → 4), '
          'add 8 negative m-tiles (4 → 12), add 6 positive 1-tiles (10 → 16).',
    },
  ),
];