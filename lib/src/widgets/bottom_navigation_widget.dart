import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../controller/dashboard_index_noti.dart';

class BottomNavigationWidget extends ConsumerStatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  ConsumerState<BottomNavigationWidget> createState() =>
      _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState
    extends ConsumerState<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    // final position = 0;
    // NotifierProvider 즉 StateNotifier 의 상태변화를 관찰함.
    final position = ref.watch(dashboardIndexNotiProvider);

    return BottomNavigationBar(
      currentIndex: position,
      onTap: (value) => _onTap(value),
      items: const [
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home),
          icon: Icon(Icons.home_work),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.shopify),
          icon: Icon(Icons.shopping_bag),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.settings),
          icon: Icon(Icons.settings_applications),
          label: 'Settings',
        ),
      ],
    );
  }

  _onTap(int index) {
    // 선택이 변경되었음을 Notification 에 알림( 즉, StateNotifier 수정 )
    ref.read(dashboardIndexNotiProvider.notifier).setPosition(index);

    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/cart');
        break;
      case 2:
        context.go('/settings');
        break;
    }
  }
}
