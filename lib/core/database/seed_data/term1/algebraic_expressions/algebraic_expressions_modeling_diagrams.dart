import '../../../../../models/lesson.dart';

const algebraicExpressionsModelingDiagrams = <LessonDiagram>[
  // Example 1
  LessonDiagram(
    exampleNumber: 1,
    type: DiagramType.barModel,
    data: {
      'segments': [
        {'label': 'Base fare: ₱13', 'value': 13},
        {'label': '3 km × ₱3', 'value': 9},
      ],
      'total': 22,
      'caption': 'Fare = 3x + 13, where x = 3 extra km → 3(3) + 13 = ₱22',
    },
  ),

  // Example 2
  LessonDiagram(
    exampleNumber: 2,
    type: DiagramType.algebraTiles,
    data: {
      'tiles': [
        {'kind': 'x', 'isPositive': true},
        {'kind': 'x', 'isPositive': true},
        {'kind': 'unit', 'isPositive': true},
        {'kind': 'unit', 'isPositive': true},
        {'kind': 'unit', 'isPositive': true},
        {'kind': 'unit', 'isPositive': true},
        {'kind': 'unit', 'isPositive': true},
      ],
      'caption':
      '"Twice a number" is two x-tiles; "five more than" adds five 1-tiles → 2x + 5',
    },
  ),

  // Example 3
  LessonDiagram(
    exampleNumber: 3,
    type: DiagramType.algebraTiles,
    data: {
      'tiles': [
        {'kind': 'x', 'isPositive': true},
        {'kind': 'unit', 'isPositive': false},
        {'kind': 'unit', 'isPositive': false},
        {'kind': 'unit', 'isPositive': false},
        {'kind': 'unit', 'isPositive': false},
        {'kind': 'unit', 'isPositive': false},
        {'kind': 'unit', 'isPositive': false},
        {'kind': 'unit', 'isPositive': false},
        {'kind': 'unit', 'isPositive': false},
      ],
      'caption':
      'x − 8 is one x-tile and eight −1 tiles. For 8 − x the order reverses: '
          'eight 1-tiles and one −x tile.',
    },
  ),

  // Example 4
  LessonDiagram(
    exampleNumber: 4,
    type: DiagramType.barModel,
    data: {
      'segments': [
        {'label': 'Ana: a', 'value': 12},
        {'label': '+3', 'value': 3},
      ],
      'total': 15,
      'caption': "Mark's age = a + 3; with a = 12 → 12 + 3 = 15",
    },
  ),

  // Example 5
  LessonDiagram(
    exampleNumber: 5,
    type: DiagramType.barModel,
    data: {
      'segments': [
        {'label': '2w', 'value': 10},
        {'label': 'w', 'value': 5},
        {'label': '2w', 'value': 10},
        {'label': 'w', 'value': 5},
      ],
      'total': 30,
      'caption':
      'Going around the garden: 2w + w + 2w + w = 6w; with w = 5 → 6(5) = 30 m',
    },
  ),

  // Example 6
  LessonDiagram(
    exampleNumber: 6,
    type: DiagramType.barModel,
    data: {
      'segments': [
        {'label': 'Winner 1', 'value': 125},
        {'label': 'Winner 2', 'value': 125},
        {'label': 'Winner 3', 'value': 125},
        {'label': 'Winner 4', 'value': 125},
      ],
      'total': 500,
      'caption': 'Each share = 500 ÷ n; with n = 4 → 500 ÷ 4 = ₱125',
    },
  ),
];