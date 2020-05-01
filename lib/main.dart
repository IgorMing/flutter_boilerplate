import 'package:flutter/material.dart';
import 'package:vesti_vendas/routes.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vesti Vendas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'futuramedium',
        primaryColor: Color.fromRGBO(48, 48, 48, 1),
        textTheme: TextTheme(
          button: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: Routes.splash,
      routes: Routes.routes,
    );
  }
}
