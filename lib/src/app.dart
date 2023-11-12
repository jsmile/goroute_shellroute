import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goroute_shellroute/src/routes/go_router_provider.dart';

// import './routes/route_config.dart';
import './routes/route_config2.dart';

class App extends ConsumerWidget {
  const App({super.key});

  // final _router =

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.read(goRouterProvider);

    return MaterialApp.router(
      routerConfig: routerConfig,
      // routerConfig: router2,
      // routeInformationParser: router.routeInformationParser,
      // routerDelegate: router.routerDelegate,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
