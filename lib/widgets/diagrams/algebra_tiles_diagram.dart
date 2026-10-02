import 'package:flutter/material.dart';

/// A single tile: represents 1, x, or x², positive or negative.
class AlgebraTile {
  final TileKind kind;
  final bool isPositive;

  const AlgebraTile(this.kind, {this.isPositive = true});
}

enum TileKind { unit, x, xSquared }

/// Renders a row of algebra tiles — the same visual convention DepEd uses
/// (small square = 1, long rectangle = x, large square = x²), redrawn
/// natively instead of using borrowed images.
class AlgebraTilesDiagram extends StatelessWidget {
  final List<AlgebraTile> tiles;
  final String? caption;

  const AlgebraTilesDiagram({super.key, required this.tiles, this.caption});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
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
        ),
        if (caption != null) ...[
          const SizedBox(height: 6),
          Text(caption!, style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
        ],
      ],
    );
  }
}