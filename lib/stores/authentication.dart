import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vesti_vendas/data/shared_preferences/shared_preferences.dart';

import 'package:vesti_vendas/models/authentication_model.dart';
import 'package:vesti_vendas/routes.dart';

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

  navigateToRoot(BuildContext context) =>
      Navigator.of(context).pushReplacementNamed(Routes.splash);

  @action
  signin(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    const String mocked_token = '__mocked_token__';

    SharedPreferencesHelper(prefs).setAuthToken(mocked_token);
    navigateToRoot(context);
  }

  @action
  signout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();

    auth.token = emptyToken;
    SharedPreferencesHelper(prefs).setAuthToken(emptyToken);
    navigateToRoot(context);
  }
}
