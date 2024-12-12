import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/service_info.dart';
import 'package:flutter_app/screens/theme_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

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
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/service_info',
      builder: (context, state) => const ServiceInfo(),
    ),
    GoRoute(
      path: '/theme_screen',
      builder: (context, state) => const ThemeScreen(),
    ),
    GoRoute(
      path: '/natification',
      builder: (context, state) => const ThemeScreen(),
    ),
    GoRoute(
      path: '/theme_screen',
      builder: (context, state) => const ThemeScreen(),
    ),
    GoRoute(
      path: '/theme_screen',
      builder: (context, state) => const ThemeScreen(),
    ),
    GoRoute(
      path: '/theme_screen',
      builder: (context, state) => const ThemeScreen(),
    ),

  ],
);
  //  