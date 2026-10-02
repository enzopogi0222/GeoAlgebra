import 'package:flutter/material.dart';

/// Renders a rectangle split into a grid, where each row/column label
/// multiplies to produce the cell inside — the standard "area model"
/// used for the distributive property, FOIL, and factoring trinomials.
class AreaModelDiagram extends StatelessWidget {
  final List<String> rowLabels;    // e.g. ['x', '+2']
  final List<String> colLabels;    // e.g. ['x', '+1']
  final List<List<String>> cells;  // cells[row][col], e.g. [['x²','2x'],['x','2']]
  final String? caption;

  const AreaModelDiagram({
    super.key,
    required this.rowLabels,
    required this.colLabels,
    required this.cells,
    this.caption,
  });

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    const cellSize = 64.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top-left spacer + column headers
            Column(
              children: [
                const SizedBox(width: cellSize, height: 28),
                for (final row in rowLabels)
                  Container(
                    width: cellSize,
                    height: cellSize,
                    alignment: Alignment.center,
                    child: Text(row, style: TextStyle(fontWeight: FontWeight.bold, color: primary)),
                  ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    for (final col in colLabels)
                      Container(
                        width: cellSize,
                        height: 28,
                        alignment: Alignment.center,
                        child: Text(col, style: TextStyle(fontWeight: FontWeight.bold, color: primary)),
                      ),
                  ],
                ),
                for (int r = 0; r < rowLabels.length; r++)
                  Row(
                    children: [
                      for (int c = 0; c < colLabels.length; c++)
                        Container(
                          width: cellSize,
                          height: cellSize,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 1.2),
                            color: primary.withValues(alpha: 0.08),
                          ),
                          alignment: Alignment.center,
                          child: Text(cells[r][c], style: const TextStyle(fontSize: 13)),
                        ),
                    ],
                  ),
              ],
            ),
          ],
        ),
        if (caption != null) ...[
          const SizedBox(height: 8),
          Text(caption!, style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
        ],
      ],
    );
  }
}