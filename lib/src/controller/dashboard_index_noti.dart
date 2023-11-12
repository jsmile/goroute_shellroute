import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardIndexNotiProvider =
    StateNotifierProvider<DashboardIndexNotifier, int>(
  (ref) => DashboardIndexNotifier(0),
);

class DashboardIndexNotifier extends StateNotifier<int> {
  // DashboardNotifier( state ): super( state );
  DashboardIndexNotifier(super.state);

  void setPosition(int value) {
    state = value;
  }
}
