import 'package:flutter/material.dart';
import '../../models/lesson.dart';
import 'algebra_tiles_diagram.dart';
import 'area_model_diagram.dart';
import 'bar_model_diagram.dart';
import 'coordinate_plane_diagram.dart';

class LessonDiagramWidget extends StatelessWidget {
  final LessonDiagram diagram;

  const LessonDiagramWidget({super.key, required this.diagram});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.auto_graph, color: colorScheme.primary, size: 20),
              const SizedBox(width: 8),
              Text(
                'Visual Representation',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _buildDiagramContent(context),
        ],
      ),
    );
  }

  Widget _buildDiagramContent(BuildContext context) {
    final data = diagram.data;

    switch (diagram.type) {
      case DiagramType.algebraTiles:
        {
          // A tile entry may carry 'count' to repeat it, e.g. 4 b-tiles.
          List<AlgebraTile> parseTiles(List? raw) {
            return (raw ?? []).expand<AlgebraTile>((t) {
              final kindStr = t['kind'] as String? ?? 'unit';
              final kind = TileKind.values.firstWhere(
                    (k) => k.name == kindStr,
                orElse: () => TileKind.unit,
              );
              final tile = AlgebraTile(
                kind,
                isPositive: t['isPositive'] as bool? ?? true,
                label: t['label'] as String?,
              );
              return List.filled((t['count'] as int?) ?? 1, tile);
            }).toList();
          }

          final tiles = parseTiles(data['tiles'] as List?);
          final rows = ((data['rows'] as List?) ?? [])
              .map((r) => AlgebraTileRow(
            label: r['label'] as String? ?? '',
            tiles: parseTiles(r['tiles'] as List?),
          ))
              .toList();
          return AlgebraTilesDiagram(
            tiles: tiles,
            rows: rows,
            caption: data['caption'] as String?,
          );
        }

      case DiagramType.areaModel:
        final rowLabels = (data['rowLabels'] as List?)?.cast<String>() ?? [];
        final colLabels = (data['colLabels'] as List?)?.cast<String>() ?? [];
        final rawCells = (data['cells'] as List?) ?? [];
        final cells = rawCells
            .map((row) => (row as List).cast<String>())
            .toList();
        final caption = data['caption'] as String?;
        return AreaModelDiagram(
          rowLabels: rowLabels,
          colLabels: colLabels,
          cells: cells,
          caption: caption,
        );

      case DiagramType.barModel:
        final rawSegments = (data['segments'] as List?) ?? [];
        final segments = rawSegments.map((s) {
          return BarModelSegment(
            label: s['label'] as String? ?? '',
            value: s['value'] as num? ?? 0,
          );
        }).toList();
        final total = data['total'] as num?;
        final caption = data['caption'] as String?;
        return BarModelDiagram(
          segments: segments,
          total: total,
          caption: caption,
        );

      case DiagramType.coordinatePlane:
        final rawPoints = (data['points'] as List?) ?? [];
        final points = rawPoints.map((p) {
          return PlottedPoint(
            (p['x'] as num).toDouble(),
            (p['y'] as num).toDouble(),
            p['label'] as String? ?? '',
          );
        }).toList();
        final showSegment = data['showSegment'] as bool? ?? false;
        final range = (data['range'] as num?)?.toDouble() ?? 6.0;
        final caption = data['caption'] as String?;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 260,
              child: CoordinatePlaneDiagram(
                points: points,
                showSegment: showSegment,
                range: range,
              ),
            ),
            if (caption != null) ...[
              const SizedBox(height: 8),
              Text(
                caption,
                style: const TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ],
        );
    }
  }
}
