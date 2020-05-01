import 'package:flutter/material.dart';

import 'package:vesti_vendas/constants/app_theme.dart';
import 'package:vesti_vendas/constants/strings.dart';
import 'package:vesti_vendas/routes.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      debugShowCheckedModeBanner: false,
      theme: themeData,
      initialRoute: Routes.splash,
      routes: Routes.routes,
    );
  }
}
