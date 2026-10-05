import '../../../../../models/lesson.dart';

// Each small tile stands for ONE factor of the letter on it (x³ = three tiles).
const lawsOfExponentsDiagrams = <LessonDiagram>[
  // Example 1 — x³ · x⁵ = x⁸
  LessonDiagram(
    exampleNumber: 1,
    type: DiagramType.algebraTiles,
    data: {
      'rows': [
        {
          'label': 'x³',
          'tiles': [
            {'kind': 'unit', 'label': 'x', 'count': 3},
          ],
        },
        {
          'label': '× x⁵',
          'tiles': [
            {'kind': 'unit', 'label': 'x', 'count': 5},
          ],
        },
        {
          'label': '= x⁸',
          'tiles': [
            {'kind': 'unit', 'label': 'x', 'count': 8},
          ],
        },
      ],
      'caption':
      'Each tile is one factor of x. 3 factors + 5 factors = 8 factors, '
          'so the exponents add: 3 + 5 = 8.',
    },
  ),

  // Example 2 — (2a²b)(5a³b⁴) = 10a⁵b⁵
  LessonDiagram(
    exampleNumber: 2,
    type: DiagramType.algebraTiles,
    data: {
      'rows': [
        {
          'label': '2a²b',
          'tiles': [
            {'kind': 'unit', 'label': 'a', 'count': 2},
            {'kind': 'unit', 'label': 'b', 'count': 1},
          ],
        },
        {
          'label': '× 5a³b⁴',
          'tiles': [
            {'kind': 'unit', 'label': 'a', 'count': 3},
            {'kind': 'unit', 'label': 'b', 'count': 4},
          ],
        },
        {
          'label': '= 10a⁵b⁵',
          'tiles': [
            {'kind': 'unit', 'label': 'a', 'count': 5},
            {'kind': 'unit', 'label': 'b', 'count': 5},
          ],
        },
      ],
      'caption':
      'Each tile is one factor. Multiply the coefficients on their own: '
          '2 · 5 = 10. Then count tiles of each letter: a: 2 + 3 = 5, b: 1 + 4 = 5.',
    },
  ),

  // Example 3 — (−3m²n³)(4mn⁵) = −12m³n⁸
  LessonDiagram(
    exampleNumber: 3,
    type: DiagramType.algebraTiles,
    data: {
      'rows': [
        {
          'label': '−3m²n³',
          'tiles': [
            {'kind': 'unit', 'label': 'm', 'count': 2},
            {'kind': 'unit', 'label': 'n', 'count': 3},
          ],
        },
        {
          'label': '× 4mn⁵',
          'tiles': [
            {'kind': 'unit', 'label': 'm', 'count': 1},
            {'kind': 'unit', 'label': 'n', 'count': 5},
          ],
        },
        {
          'label': '= −12m³n⁸',
          'tiles': [
            {'kind': 'unit', 'label': 'm', 'count': 3},
            {'kind': 'unit', 'label': 'n', 'count': 8},
          ],
        },
      ],
      'caption':
      'Coefficients: −3 · 4 = −12. Tiles of each letter: m: 2 + 1 = 3, '
          'n: 3 + 5 = 8.',
    },
  ),

  // Example 4 — y⁹ ÷ y⁴ = y⁵
  LessonDiagram(
    exampleNumber: 4,
    type: DiagramType.algebraTiles,
    data: {
      'rows': [
        {
          'label': 'y⁹ (top)',
          'tiles': [
            {'kind': 'unit', 'label': 'y', 'count': 9},
          ],
        },
        {
          'label': '÷ y⁴ (bottom)',
          'tiles': [
            {'kind': 'unit', 'label': 'y', 'count': 4},
          ],
        },
        {
          'label': '= y⁵ (left on top)',
          'tiles': [
            {'kind': 'unit', 'label': 'y', 'count': 5},
          ],
        },
      ],
      'caption':
      'Each tile on the bottom cancels one matching tile on top: '
          '9 − 4 = 5 tiles are left.',
    },
  ),

  // Example 5 — −18p³q⁵ ÷ 6pq² = −3p²q³
  LessonDiagram(
    exampleNumber: 5,
    type: DiagramType.algebraTiles,
    data: {
      'rows': [
        {
          'label': '−18p³q⁵ (top)',
          'tiles': [
            {'kind': 'unit', 'label': 'p', 'count': 3},
            {'kind': 'unit', 'label': 'q', 'count': 5},
          ],
        },
        {
          'label': '÷ 6pq² (bottom)',
          'tiles': [
            {'kind': 'unit', 'label': 'p', 'count': 1},
            {'kind': 'unit', 'label': 'q', 'count': 2},
          ],
        },
        {
          'label': '= −3p²q³ (left on top)',
          'tiles': [
            {'kind': 'unit', 'label': 'p', 'count': 2},
            {'kind': 'unit', 'label': 'q', 'count': 3},
          ],
        },
      ],
      'caption':
      'Coefficients: −18 ÷ 6 = −3. Cancel one p and two q tiles from the top: '
          'p: 3 − 1 = 2, q: 5 − 2 = 3.',
    },
  ),

  // Example 6 — 5c² ÷ c⁶ = 5/c⁴
  LessonDiagram(
    exampleNumber: 6,
    type: DiagramType.algebraTiles,
    data: {
      'rows': [
        {
          'label': '5c² (top)',
          'tiles': [
            {'kind': 'unit', 'label': 'c', 'count': 2},
          ],
        },
        {
          'label': '÷ c⁶ (bottom)',
          'tiles': [
            {'kind': 'unit', 'label': 'c', 'count': 6},
          ],
        },
        {
          'label': '= 5 / c⁴ (these c tiles are left on the bottom)',
          'tiles': [
            {'kind': 'unit', 'label': 'c', 'count': 4},
          ],
        },
      ],
      'caption':
      'The 2 tiles on top cancel 2 of the 6 on the bottom. 4 are left on the '
          'bottom, so the answer is 5 over c⁴ (exponent 2 − 6 = −4).',
    },
  ),

  // Example 7 — −20x⁴y² ÷ (−4x⁷y) = 5y / x³
  LessonDiagram(
    exampleNumber: 7,
    type: DiagramType.algebraTiles,
    data: {
      'rows': [
        {
          'label': '−20x⁴y² (top)',
          'tiles': [
            {'kind': 'unit', 'label': 'x', 'count': 4},
            {'kind': 'unit', 'label': 'y', 'count': 2},
          ],
        },
        {
          'label': '÷ −4x⁷y (bottom)',
          'tiles': [
            {'kind': 'unit', 'label': 'x', 'count': 7},
            {'kind': 'unit', 'label': 'y', 'count': 1},
          ],
        },
        {
          'label': '= 5y / x³ (1 y left on top, 3 x left on the bottom)',
          'tiles': [
            {'kind': 'unit', 'label': 'y', 'count': 1},
            {'kind': 'unit', 'label': 'x', 'count': 3},
          ],
        },
      ],
      'caption':
      'Coefficients: −20 ÷ −4 = 5. For x, the bottom has more tiles (7 vs 4), '
          'so 3 x-tiles stay on the bottom. For y, the top has more (2 vs 1), '
          'so 1 y-tile stays on top.',
    },
  ),
];