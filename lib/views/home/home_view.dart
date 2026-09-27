import 'package:flutter/material.dart';
import '../../viewmodels/home_viewmodel.dart';
import '../../core/routes/app_routes.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeViewmodel viewModel = HomeViewmodel();

  void _navigateToRoute(BuildContext context, String route) {
    if (route == AppRoutes.algebra || route == AppRoutes.geometry) {
      Navigator.pushNamed(context, route);
    } else {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Feature coming soon!'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.appTitle),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Section
              Text(
                viewModel.welcomeMessage,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                viewModel.subtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),

              const SizedBox(height: 30),

              // Learning Section
              const Text(
                'Learn',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  Expanded(
                    child: _buildSubjectCard(
                      context,
                      icon: Icons.functions,
                      title: 'Algebra',
                      route: AppRoutes.algebra,
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: _buildSubjectCard(
                      context,
                      icon: Icons.change_history,
                      title: 'Geometry',
                      route: AppRoutes.geometry,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Practice Section
              const Text(
                'Practice and Review',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              _buildListCard(
                context,
                icon: Icons.assignment,
                title: 'Practice Exercises',
                subtitle: 'Practice what you have learned.',
                route: AppRoutes.practice,
              ),

              _buildListCard(
                context,
                icon: Icons.quiz,
                title: 'Quiz Games',
                subtitle: 'Test your understanding.',
                route: AppRoutes.quiz,
              ),

              _buildListCard(
                context,
                icon: Icons.sports_esports,
                title: 'Educational Games',
                subtitle: 'Learn through interactive activities.',
                route: AppRoutes.games,
              ),

              _buildListCard(
                context,
                icon: Icons.menu_book,
                title: 'Review Notes',
                subtitle: 'Review important concepts and study materials.',
                route: AppRoutes.review,
              ),

              _buildListCard(
                context,
                icon: Icons.bar_chart,
                title: 'Progress',
                subtitle: 'Monitor your learning progress.',
                route: AppRoutes.progress,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubjectCard(
      BuildContext context, {
        required IconData icon,
        required String title,
        required String route,
      }) {
    return Card(
      child: InkWell(
        onTap: () => _navigateToRoute(context, route),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Icon(
                icon,
                size: 45,
              ),

              const SizedBox(height: 10),

              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListCard(
      BuildContext context, {
        required IconData icon,
        required String title,
        required String subtitle,
        required String route,
      }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),

      child: ListTile(
        leading: Icon(
          icon,
          size: 32,
        ),

        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Text(subtitle),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),

        onTap: () => _navigateToRoute(context, route),
      ),
    );
  }
}
