import 'package:flutter/material.dart';

import 'package:flutter_boilerplate/screens/public/splash.dart';
import 'package:flutter_boilerplate/screens/authenticated/home.dart';
import 'package:flutter_boilerplate/screens/public/login.dart';

class Routes {
  Routes._();

  static const String splash = '/splash';
  static const String home = '/home';
  static const String login = '/login';

  static get rootScreen => SplashScreen();

  static final routes = <String, WidgetBuilder>{
    splash: (_) => rootScreen,
    home: (_) => HomeScreen(),
    login: (_) => LoginScreen(),
  };
}
