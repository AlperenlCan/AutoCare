import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/car_1.dart';
import 'package:flutter_app/screens/theme_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/info_screen.dart';
import '../screens/language.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/logout_screen.dart';
import '../screens/natification.dart';
import '../screens/car_2.dart';
import '../screens/settings_screen.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/',  // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/car_2',
      builder: (context, state) => const Car2(),
    ),
    GoRoute(
      path: '/car_1',
      builder: (context, state) => const Car1(),
    ),
    GoRoute(
      path: '/theme_screen',
      builder: (context, state) => const ThemeScreen(),
    ),
    GoRoute(
      path: '/natification',
      builder: (context, state) => const Natification(),
    ),
    GoRoute(
      path: '/Language_screen',
      builder: (context, state) => const Language_screen(),
    ),
    GoRoute(
      path: '/Logout_screen',
      builder: (context, state) => const Logout_screen(),
    ),
    GoRoute(
      path: '/Info_screen',
      builder: (context, state) => const Info_screen(),
    ),
    GoRoute(
      path: '/Setting_screen',
      builder: (context, state) => const Setting_screen(),
    ),

  ],
);
  //  