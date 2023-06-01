import 'package:dimash_diploma/src/pages/form_page.dart';
import 'package:dimash_diploma/src/pages/main_page.dart';
import 'package:dimash_diploma/src/pages/symptoms_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'models/question.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'symptoms',
          builder: (BuildContext context, GoRouterState state) {
            return SymptomsPage();
          },
        ),
      ],
    ),
  ],
);
