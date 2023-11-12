import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Choose a navigation method:'),
            const SizedBox(height: 16),
            ElevatedButton(
              // onPressed: () => context.go('/shell/red'),
              onPressed: () => context.go('/shell'),
              child: const Text('ShellRoute'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/goroute/red'),
              child: const Text('GoRoute'),
            ),
          ],
        ),
      ),
    );
  }
}
