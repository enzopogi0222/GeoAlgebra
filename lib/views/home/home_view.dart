import 'package:flutter/material.dart';
import '../../viewmodels/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final viewModel = HomeViewmodel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.Title),
      ),
      body: Center(
        child: Text(
          viewModel.welcomeMessage,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
