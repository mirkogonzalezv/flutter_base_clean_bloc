import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:profile_bloc_app/common/variables/router_var.dart';
import 'package:profile_bloc_app/features/home/presentation/pages/home_page.dart';
import 'package:profile_bloc_app/features/users/presentation/pages/users_page.dart';

final router = GoRouter(
  initialLocation: RouterApp().homePath,
  redirect: (context, state) {
    return null;
  },
  routes: [
    GoRoute(
      name: RouterApp().homeName,
      path: RouterApp().homePath,
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
      name: RouterApp().usersName,
      path: RouterApp().usersPath,
      builder: (context, state) {
        return const UsersPage();
      },
    ),
  ],
  errorPageBuilder: (context, state) {
    return MaterialPage(
      key: state.pageKey,
      child: const Scaffold(
        body: Center(
          child: Text('Error no se encontro la ruta'),
        ),
      ),
    );
  },
);
