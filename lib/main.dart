import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_boilerplate/constants/app_theme.dart';
import 'package:flutter_boilerplate/constants/strings.dart';
import 'package:flutter_boilerplate/routes.dart';
import 'package:flutter_boilerplate/stores/authentication.dart';

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
