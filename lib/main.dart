import 'package:flutter/material.dart';
import 'core/database/db_seeder.dart';


import 'core/theme/app_theme.dart';
import 'core/routes/app_routes.dart';

import 'views/subject/subject_view.dart';
import 'views/home/home_view.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await DbSeeder.seedIfEmpty();
  } catch (e) {
    // Log error but allow app to start
    print('Error during database initialization: $e');
  }
  runApp(const GeoAlgebraApp());
}

class GeoAlgebraApp extends StatelessWidget {
  const GeoAlgebraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'GeoAlgebra',

      theme: AppTheme.lightTheme,

      initialRoute: AppRoutes.home,

      routes: {
        AppRoutes.home: (context) => HomeView(),
        AppRoutes.algebra: (context) =>
        const SubjectView(subject: 'Algebra', icon: Icons.functions),
        AppRoutes.geometry: (context) =>
        const SubjectView(subject: 'Geometry', icon: Icons.change_history),
      },
    );
  }
}