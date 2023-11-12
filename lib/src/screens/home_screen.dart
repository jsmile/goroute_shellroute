import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text(
              'Home Screen',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
