import 'package:flutter/material.dart';

class PlottedPoint {
  final double x, y;
  final String label;
  const PlottedPoint(this.x, this.y, this.label);
}

class CoordinatePlaneDiagram extends StatelessWidget {
  final List<PlottedPoint> points;
  final bool showSegment; // draws a line between two points (distance/midpoint)
  final double range;     // axis extends from -range to +range

  const CoordinatePlaneDiagram({
    super.key,
    required this.points,
    this.showSegment = false,
    this.range = 6,
  });

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    return AspectRatio(
      aspectRatio: 1,
      child: CustomPaint(
        painter: _PlanePainter(points: points, showSegment: showSegment, range: range, color: primary),
      ),
    );
  }
}

class _PlanePainter extends CustomPainter {
  final List<PlottedPoint> points;
  final bool showSegment;
  final double range;
  final Color color;

  _PlanePainter({required this.points, required this.showSegment, required this.range, required this.color});

  Offset _toCanvas(double x, double y, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    final scale = (size.width / 2) / range;
    return Offset(cx + x * scale, cy - y * scale);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final axisPaint = Paint()..color = Colors.grey..strokeWidth = 1;
    final gridPaint = Paint()..color = Colors.grey.withValues(alpha: 0.2)..strokeWidth = 0.5;
    final pointPaint = Paint()..color = color..style = PaintingStyle.fill;
    final segmentPaint = Paint()..color = color..strokeWidth = 2;

    // Grid lines
    for (int i = -range.toInt(); i <= range; i++) {
      final p1 = _toCanvas(i.toDouble(), -range, size);
      final p2 = _toCanvas(i.toDouble(), range, size);
      canvas.drawLine(p1, p2, gridPaint);
      final p3 = _toCanvas(-range, i.toDouble(), size);
      final p4 = _toCanvas(range, i.toDouble(), size);
      canvas.drawLine(p3, p4, gridPaint);
    }

    // Axes
    canvas.drawLine(_toCanvas(-range, 0, size), _toCanvas(range, 0, size), axisPaint);
    canvas.drawLine(_toCanvas(0, -range, size), _toCanvas(0, range, size), axisPaint);

    // Segment between points (for distance/midpoint lessons)
    if (showSegment && points.length >= 2) {
      canvas.drawLine(
        _toCanvas(points[0].x, points[0].y, size),
        _toCanvas(points[1].x, points[1].y, size),
        segmentPaint,
      );
    }

    // Points + labels
    final textPainter = TextPainter(textDirection: TextDirection.ltr);
    for (final p in points) {
      final pos = _toCanvas(p.x, p.y, size);
      canvas.drawCircle(pos, 4, pointPaint);
      textPainter.text = TextSpan(
        text: '${p.label} (${p.x.toInt()}, ${p.y.toInt()})',
        style: TextStyle(fontSize: 11, color: color, fontWeight: FontWeight.bold),
      );
      textPainter.layout();
      textPainter.paint(canvas, pos + const Offset(8, -16));
    }
  }

  @override
  bool shouldRepaint(covariant _PlanePainter oldDelegate) => true;
}