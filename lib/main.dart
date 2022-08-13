// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app1/screens/coffe/coffe_details.dart';
import 'package:app1/screens/splash/splash.dart';
import 'package:app1/shared/theme.dart';
import 'package:app1/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return SplashPage();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return HomePage();
        },
      ),
      GoRoute(
        path: '/coffe/details',
        builder: (BuildContext context, GoRouterState state) {
          final extra = state.extra as dynamic;

          return CoffeDetails(
            key: state.pageKey,
            coffe: extra != null ? extra['data'] : null,
          );
        },
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: App.theme(),
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      //initialRoute: '/splash',
    );
  }
}
