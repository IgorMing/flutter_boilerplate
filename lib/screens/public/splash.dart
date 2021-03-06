import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:flutter_boilerplate/screens/authenticated/home.dart';
import 'package:flutter_boilerplate/screens/public/login.dart';

import 'package:flutter_boilerplate/stores/authentication.dart';

class SplashScreen extends StatelessWidget {
  final store = AuthenticationStore();

  SplashScreen() {
    store.checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
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
