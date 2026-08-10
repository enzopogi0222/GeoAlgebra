import 'package:flutter/material.dart';
import 'views/home/home_view.dart';
import 'core/theme/app_theme.dart';
import 'core/routes/app_routes.dart';

void main() {
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
      },
    );
  }
}