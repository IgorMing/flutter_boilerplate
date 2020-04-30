import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:vesti_vendas/screens/needs_auth/home.dart';
import 'package:vesti_vendas/screens/public/login.dart';

import 'package:vesti_vendas/stores/authentication.dart';

class SplashScreen extends StatelessWidget {
  final store = AuthenticationStore();

  SplashScreen() {
    store.signin();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (BuildContext context) {
      print('renderizou a splash');
      if (store.loading) {
        return Scaffold(
          body: Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      }

      print(store.auth.token);
      return store.auth.token.isEmpty ? LoginScreen() : HomeScreen();
    });
  }
}
