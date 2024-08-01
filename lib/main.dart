import 'package:deep/FruitsPage.dart';
import 'package:deep/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(MaterialApp.router(routerConfig: router));

/// This handles '/' and '/details'.
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => Home(),
      routes: [
        GoRoute(
            path: 'details',
            builder: (_, __) => Scaffold(
                  appBar: AppBar(title: const Text('Details Screen urta')),
                ),
            routes: [
              GoRoute(
                  path: 'data',
                  builder: (_, __) => Scaffold(
                        appBar: AppBar(title: const Text('Data Screen ohiri')),
                      ),
                  routes: [
                    GoRoute(
                      path: 'data2/:id',
                      builder: (_, __) => FruitsPage(
                          id: int.parse(__.pathParameters['id'] ?? '1')),
                    ),
                  ]),
            ]),
      ],
    ),
    // GoRoute(
    //     path: '/fruits/:id',
    //     builder: (_, state) =>
    //         FruitsPage(id: int.parse(state.pathParameters['id']!)),
    //     routes: [
    //       GoRoute(
    //         path: '/details1/:id',
    //         builder: (_, __) =>
    //             Detail1(id: int.parse(__.pathParameters['id']!)),
    //       ),
    //     ]),
    // GoRoute(
    //   path: '/fruits',
    //   builder: (context, state) {
    //     return FruitsPage();
    //   },
    //   routes: <RouteBase>[
    //     // Add child routes
    //     GoRoute(
    //       path:
    //           'fruits-details', // NOTE: Don't need to specify "/" character for router’s parents
    //       builder: (context, state) {
    //         return Detail1();
    //       },
    //     ),
    //   ],
    // )
  ],
);
