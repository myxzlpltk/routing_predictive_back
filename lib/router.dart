// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:routing_predictive_back/screens/screen_a.dart';
import 'package:routing_predictive_back/screens/screen_b.dart';
import 'package:routing_predictive_back/screens/screen_c.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ScreenA(),
    ),
    ShellRoute(
      builder: (context, state, child) => child,
      routes: [
        GoRoute(
          path: '/books',
          builder: (context, state) => const ScreenB(),
          routes: [
            GoRoute(
              path: 'create',
              builder: (context, state) => const ScreenC(),
            ),
          ],
        ),
      ],
    ),
    // This weird behavior doesn't happened when not using ShellRoute
    /*GoRoute(
      path: '/books',
      builder: (context, state) => const ScreenB(),
      routes: [
        GoRoute(
          path: 'create',
          builder: (context, state) => const ScreenC(),
        ),
      ],
    ),*/
  ],
);
