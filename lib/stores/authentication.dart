import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vesti_vendas/data/shared_preferences/shared_preferences.dart';

import 'package:vesti_vendas/models/authentication_model.dart';
import 'package:vesti_vendas/routes.dart';
import 'package:vesti_vendas/screens/public/splash.dart';

part 'authentication.g.dart';

class AuthenticationStore = _AuthenticationStore with _$AuthenticationStore;

abstract class _AuthenticationStore with Store {
  final String emptyToken = '';

  @observable
  AuthenticationModel auth = AuthenticationModel();

  @computed
  bool get loading => auth.token == null;

  @computed
  bool get isAuthenticated => auth.token.isNotEmpty;

  @action
  checkAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final String token = SharedPreferencesHelper(prefs).authToken ?? emptyToken;

    auth.setToken(token);
  }

  navigateToRoot(BuildContext context, bool loginIn) =>
      Navigator.of(context).pushReplacement(
        PageTransition(
          child: Routes.rootScreen,
          duration: Duration(milliseconds: 200),
          type: loginIn
              ? PageTransitionType.downToUp
              : PageTransitionType.upToDown,
        ),
      );

  @action
  signin(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    const String mocked_token = '__mocked_token__';

    SharedPreferencesHelper(prefs).setAuthToken(mocked_token);
    navigateToRoot(context, true);
  }

  @action
  signout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();

    auth.token = emptyToken;
    SharedPreferencesHelper(prefs).setAuthToken(emptyToken);
    navigateToRoot(context, false);
  }
}
