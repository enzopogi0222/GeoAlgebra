import 'package:flutter/material.dart';
import 'views/home/home_view.dart';

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
      home: HomeView(),
    );
  }
}