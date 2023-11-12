import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/pages_exports.dart';

class ShellPage extends StatelessWidget {
  final GoRouterState state;
  const ShellPage({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShellRoute'),
      ),
      body: state.matchedLocation == '/shell/red'
          ? const RedPage()
          : state.matchedLocation == '/shell/green'
              ? const GreenPage()
              : state.matchedLocation == '/shell/blue'
                  ? const BluePage()
                  : null,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: state.matchedLocation == '/shell/red'
            ? 0
            : state.matchedLocation == '/shell/green'
                ? 1
                : state.matchedLocation == '/shell/blue'
                    ? 2
                    : -1,
        onTap: (index) {
          switch (index) {
            case 0:
              context.go('/shell/red');
              break;
            case 1:
              context.go('/shell/green');
              break;
            case 2:
              context.go('/shell/blue');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Red',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Green',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Blue',
          ),
        ],
      ),
    );
  }
}
