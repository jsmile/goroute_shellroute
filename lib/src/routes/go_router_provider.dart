import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../screens/screens_exports.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/home',
          name: 'root',
          // 기본 페이지 전환 애니메이션 사용
          builder: (context, state) => HomeScreen(key: state.pageKey),
        ),
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) => DashboardScreen(
            key: state.pageKey,
            child: child,
          ),
          routes: [
            GoRoute(
              path: '/',
              name: 'home',
              pageBuilder: (context, state) => NoTransitionPage(
                child: HomeScreen(key: state.pageKey),
              ),
            ),
            GoRoute(
              path: '/cart',
              name: 'cart',
              pageBuilder: (context, state) => NoTransitionPage(
                child: CartScreen(key: state.pageKey),
              ),
            ),
            GoRoute(
              path: '/settings',
              name: 'settings',
              // 기본 페이지 전환 애니메이션을 사용하지 않음.
              pageBuilder: (context, state) => NoTransitionPage(
                child: SettingsScreen(key: state.pageKey),
              ),
            ),
          ],
        ),
      ],
      errorBuilder: (context, state) => RouterErrorScreen(
        errorMsg: state.error.toString(),
        key: state.pageKey,
      ),
    );
  },
);
