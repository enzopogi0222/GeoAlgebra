import 'package:flutter/material.dart';
import '../../models/lesson.dart';

class LessonView extends StatefulWidget {
  final Lesson lesson;

  const LessonView({super.key, required this.lesson});

  @override
  State<LessonView> createState() => _LessonViewState();
}

class _LessonViewState extends State<LessonView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  late final List<_Slide> _slides;

  @override
  void initState() {
    super.initState();
    _slides = [
      _Slide(label: 'Overview', icon: Icons.info_outline, content: widget.lesson.overview),
      _Slide(label: 'Explanation', icon: Icons.menu_book_outlined, content: widget.lesson.explanation),
      _Slide(label: 'Worked Example', icon: Icons.calculate_outlined, content: widget.lesson.example),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLastPage = _currentPage == _slides.length - 1;
    final isFirstPage = _currentPage == 0;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.lesson.title,
          maxLines: 2,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          // Slide indicator dots
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_slides.length, (index) {
                final isActive = index == _currentPage;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: isActive ? 24 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: isActive
                        ? colorScheme.primary
                        : colorScheme.primary.withValues(alpha: 0.25),
                    borderRadius: BorderRadius.circular(4),
                  ),
                );
              }),
            ),
          ),

          // Swipeable slides
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _slides.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) {
                final slide = _slides[index];
                return SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(slide.icon, color: colorScheme.primary, size: 28),
                          const SizedBox(width: 10),
                          Text(
                            slide.label,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildFormattedContent(context, slide.content),
                    ],
                  ),
                );
              },
            ),
          ),

          // Bottom Navigation Buttons wrapped in SafeArea
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: Row(
                children: [
                  if (!isFirstPage)
                    Expanded(
                      child: SizedBox(
                        height: 48,
                        child: OutlinedButton(
                          onPressed: () => _goToPage(_currentPage - 1),
                          child: const Text('Back', style: TextStyle(fontSize: 16)),
                        ),
                      ),
                    ),
                  if (!isFirstPage) const SizedBox(width: 12),
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: FilledButton(
                        onPressed: isLastPage
                            ? () => Navigator.pop(context)
                            : () => _goToPage(_currentPage + 1),
                        child: Text(
                          isLastPage ? 'Done' : 'Next',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormattedContent(BuildContext context, String content) {
    final colorScheme = Theme.of(context).colorScheme;
    final sections = content.split('\n\n').where((s) => s.trim().isNotEmpty).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: sections.map((section) {
        final trimmed = section.trim();

        // Styled Example card
        if (trimmed.startsWith('Example')) {
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHigh,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: colorScheme.outlineVariant.withValues(alpha: 0.5),
              ),
            ),
            child: Text(
              trimmed,
              style: TextStyle(
                fontSize: 15,
                height: 1.5,
                color: colorScheme.onSurface,
              ),
            ),
          );
        }

        // Vocabulary, bullet list, or numbered step block
        if (trimmed.contains('•') ||
            trimmed.startsWith('Key vocabulary:') ||
            RegExp(r'^\d+\.').hasMatch(trimmed) ||
            RegExp(r'^Step\s+\d+:', caseSensitive: false).hasMatch(trimmed)) {
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: colorScheme.primary.withValues(alpha: 0.2),
              ),
            ),
            child: Text(
              trimmed,
              style: TextStyle(
                fontSize: 15,
                height: 1.5,
                color: colorScheme.onSurface,
              ),
            ),
          );
        }

        // Default text paragraph
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            trimmed,
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: colorScheme.onSurface,
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _Slide {
  final String label;
  final IconData icon;
  final String content;

  _Slide({required this.label, required this.icon, required this.content});
}
