import 'package:flutter/material.dart';

class TermHeader extends StatelessWidget {
  final int term;

  const TermHeader({super.key, required this.term});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'TERM $term',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(child: Divider(color: color.withValues(alpha: 0.4))),
        ],
      ),
    );
  }
}
