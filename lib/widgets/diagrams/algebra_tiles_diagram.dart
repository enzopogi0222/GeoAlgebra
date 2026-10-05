import 'package:flutter/material.dart';

/// A single tile: represents 1, x, or x², positive or negative.
class AlgebraTile {
  final TileKind kind;
  final bool isPositive;
  final String? label;

  const AlgebraTile(this.kind, {this.isPositive = true, this.label});
}

enum TileKind { unit, x, xSquared }

/// A labeled row of tiles, e.g. one binomial in an addition problem.
class AlgebraTileRow {
  final String label;
  final List<AlgebraTile> tiles;

  const AlgebraTileRow({required this.label, required this.tiles});
}

/// Renders algebra tiles — the same visual convention DepEd uses
/// (small square = 1, long rectangle = x, large square = x²), redrawn
/// natively instead of using borrowed images.
///
/// Pass either a single list of [tiles], or several labeled [rows]
/// (the last row is drawn as the result, below a divider).
class AlgebraTilesDiagram extends StatelessWidget {
  final List<AlgebraTile> tiles;
  final List<AlgebraTileRow> rows;
  final String? caption;

  const AlgebraTilesDiagram({
    super.key,
    this.tiles = const [],
    this.rows = const [],
    this.caption,
  });

  Widget _buildTiles(List<AlgebraTile> tiles, Color primary) {
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: tiles.map((tile) {
        final size = switch (tile.kind) {
          TileKind.unit => const Size(20, 20),
          TileKind.x => const Size(60, 20),
          TileKind.xSquared => const Size(60, 60),
        };
        return Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: tile.isPositive ? primary : Colors.white,
            border: Border.all(color: primary, width: 1.5),
            borderRadius: BorderRadius.circular(2),
          ),
          alignment: Alignment.center,
          child: Text(
            tile.label ??
                switch (tile.kind) {
                  TileKind.unit => '1',
                  TileKind.x => 'x',
                  TileKind.xSquared => 'x²',
                },
            style: TextStyle(
              fontSize: 11,
              color: tile.isPositive ? Colors.white : primary,
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (rows.isEmpty)
          _buildTiles(tiles, primary)
        else
          for (var i = 0; i < rows.length; i++) ...[
            if (i == rows.length - 1 && rows.length > 1)
              const Divider(height: 16),
            Text(
              rows[i].label,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            _buildTiles(rows[i].tiles, primary),
            const SizedBox(height: 10),
          ],
        if (caption != null) ...[
          const SizedBox(height: 6),
          Text(
            caption!,
            style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
          ),
        ],
      ],
    );
  }
}