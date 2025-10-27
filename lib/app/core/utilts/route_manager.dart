import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentaion/ui/home/home_sc.dart';

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

abstract class AppRoutes {
  static const home = "/";
}

CustomTransitionPage<dynamic> _fadePageTransition(
  Widget child,
  GoRouterState state,
) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}

final GoRouter appRouter = GoRouter(
  navigatorKey: navKey,
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      pageBuilder: (context, state) => _fadePageTransition(HomeSc(), state),
    ),
  ],
);

abstract class RouteManager {
  static GoRouter get router => appRouter;
}
