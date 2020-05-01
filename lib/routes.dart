import 'package:flutter/material.dart';

import 'package:vesti_vendas/screens/public/splash.dart';
import 'package:vesti_vendas/screens/authenticated/home.dart';
import 'package:vesti_vendas/screens/public/login.dart';

class Routes {
  Routes._();

  static const String splash = '/splash';
  static const String home = '/home';
  static const String login = '/login';

  static final routes = <String, WidgetBuilder>{
    splash: (_) => SplashScreen(),
    home: (_) => HomeScreen(),
    login: (_) => LoginScreen(),
  };
}
