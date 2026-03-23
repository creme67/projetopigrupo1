import 'package:flutter/material.dart';
import 'package:pi_projeto/app/routes/app_routes.dart';
import 'package:pi_projeto/features/auth/views/login_page.dart';
import 'package:pi_projeto/features/auth/views/register_page.dart';
import 'package:pi_projeto/features/home/views/homeOdontoApp.dart';

abstract class AppPages {
  static Map<String, WidgetBuilder> get routes => {
    AppRoutes.login: (_) => const LoginPage(),
    AppRoutes.register: (_) => const RegisterPage(),
    AppRoutes.home: (_) => const HomePage(),
  };
}
