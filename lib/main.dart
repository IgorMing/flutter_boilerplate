import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:vesti_vendas/constants/app_theme.dart';
import 'package:vesti_vendas/constants/strings.dart';
import 'package:vesti_vendas/routes.dart';
import 'package:vesti_vendas/stores/authentication.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationStore>(create: (_) => AuthenticationStore())
      ],
      child: MaterialApp(
        title: Strings.appName,
        debugShowCheckedModeBanner: false,
        theme: themeData,
        initialRoute: Routes.splash,
        routes: Routes.routes,
      ),
    );
  }
}
