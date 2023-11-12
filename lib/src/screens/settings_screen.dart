import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text(
              'Settings Screen',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
