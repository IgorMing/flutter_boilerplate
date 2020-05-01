import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:vesti_vendas/screens/needs_auth/home.dart';
import 'package:vesti_vendas/screens/public/login.dart';

import 'package:vesti_vendas/stores/authentication.dart';

class SplashScreen extends StatelessWidget {
  final store = AuthenticationStore();

  SplashScreen() {
    store.checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (BuildContext context) {
        if (store.loading) {
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return store.isAuthenticated ? HomeScreen() : LoginScreen();
      }),
    );
  }
}
