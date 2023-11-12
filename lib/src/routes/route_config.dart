import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/pages_exports.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const HomePage(),
      ),
    ),
    GoRoute(
      path: '/shell',
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: ShellPage(
          state: state,
        ),
      ),
      routes: [
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          routes: [
            GoRoute(
              path: 'red',
              pageBuilder: (context, state) => MaterialPage<void>(
                key: state.pageKey,
                child: const RedPage(),
              ),
            ),
            GoRoute(
              path: 'green',
              pageBuilder: (context, state) => MaterialPage<void>(
                key: state.pageKey,
                child: const GreenPage(),
              ),
            ),
            GoRoute(
              path: 'blue',
              pageBuilder: (context, state) => MaterialPage<void>(
                key: state.pageKey,
                child: const BluePage(),
              ),
            ),
          ],
          builder: (context, state, child) => ShellPage(state: state),
        )
      ],
    ),
    GoRoute(
      path: '/goroute',
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: GoRoutePage(state: state),
      ),
      routes: [
        GoRoute(
          path: 'red',
          pageBuilder: (context, state) => MaterialPage<void>(
            key: state.pageKey,
            child: const RedPage(),
          ),
        ),
        GoRoute(
          path: 'green',
          pageBuilder: (context, state) => MaterialPage<void>(
            key: state.pageKey,
            child: const GreenPage(),
          ),
        ),
        GoRoute(
          path: 'blue',
          pageBuilder: (context, state) => MaterialPage<void>(
            key: state.pageKey,
            child: const BluePage(),
          ),
        ),
      ],
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage<void>(
    key: state.pageKey,
    child: Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: Center(
        child: Text('Page not found: ${state.error}'),
      ),
    ),
  ),
);
