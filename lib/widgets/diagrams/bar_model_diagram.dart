import 'package:flutter/material.dart';

class BarModelSegment {
  final String label;
  final num value;

  const BarModelSegment({required this.label, required this.value});
}

/// Renders a bar model divided into proportional or labeled blocks,
/// commonly used for modeling algebraic expressions and word problems.
class BarModelDiagram extends StatelessWidget {
  final List<BarModelSegment> segments;
  final num? total;
  final String? caption;

  const BarModelDiagram({
    super.key,
    required this.segments,
    this.total,
    this.caption,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final totalVal = total ?? segments.fold<num>(0, (sum, s) => sum + s.value);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Bar container
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Row(
            children: segments.map((seg) {
              final flex = (seg.value / (totalVal == 0 ? 1 : totalVal) * 100)
                  .round()
                  .clamp(1, 100);
              return Expanded(
                flex: flex,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  color: colorScheme.primaryContainer,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        seg.label,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onPrimaryContainer,
                        ),
                      ),
                      if (seg.value > 0) ...[
                        const SizedBox(height: 4),
                        Text(
                          '${seg.value}',
                          style: TextStyle(
                            fontSize: 11,
                            color: colorScheme.onPrimaryContainer.withValues(alpha: 0.8),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        if (total != null) ...[
          const SizedBox(height: 6),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Total: $total',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: colorScheme.primary,
              ),
            ),
          ),
        ],
        if (caption != null) ...[
          const SizedBox(height: 8),
          Text(
            caption!,
            style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
          ),
        ],
      ],
    );
  }
}
