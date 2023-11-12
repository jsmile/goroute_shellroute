import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/pages_exports.dart';

class GoRoutePage extends StatelessWidget {
  final GoRouterState state;
  const GoRoutePage({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoRoute'),
      ),
      body: Navigator(
        // key:  state.navKey,
        onPopPage: (route, result) => route.didPop(result),
        pages: [
          if (state.matchedLocation == '/goroute/red')
            const MaterialPage<void>(
              key: ValueKey('red'),
              child: RedPage(),
            ),
          if (state.matchedLocation == '/goroute/green')
            const MaterialPage<void>(
              key: ValueKey('green'),
              child: GreenPage(),
            ),
          if (state.matchedLocation == '/goroute/blue')
            const MaterialPage<void>(
              key: ValueKey('blue'),
              child: BluePage(),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: state.matchedLocation == '/goroute/red'
            ? 0
            : state.matchedLocation == '/goroute/green'
                ? 1
                : state.matchedLocation == '/goroute/blue'
                    ? 2
                    : -1,
        onTap: (index) {
          switch (index) {
            case 0:
              context.go('/goroute/red');
              break;
            case 1:
              context.go('/goroute/green');
              break;
            case 2:
              context.go('/goroute/blue');
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
