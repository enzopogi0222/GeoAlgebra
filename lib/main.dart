import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GeoAlgebra'),
        ),
        body: const Center(
          child: Text(
            'Welcome to GeoAlgebra',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
