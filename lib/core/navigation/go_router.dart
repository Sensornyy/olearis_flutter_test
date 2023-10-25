import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olearis_flutter_test/src/features/home/presentation/screens/home_screen.dart';
import 'package:olearis_flutter_test/src/features/sign_in/presentation/screens/sign_in_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SignInScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ),
      ],
    ),
  ],
);
