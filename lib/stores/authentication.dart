import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_boilerplate/data/shared_preferences/shared_preferences.dart';

import 'package:flutter_boilerplate/models/authentication_model.dart';
import 'package:flutter_boilerplate/routes.dart';

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
    final String token =
        (await SharedPreferencesHelper().authToken) ?? emptyToken;

    auth.setToken(token);
  }

  navigateToRoot(BuildContext context, bool loginIn) =>
      Navigator.of(context).pushReplacement(
        PageTransition(
          child: Routes.rootScreen,
          duration: Duration(milliseconds: 200),
          type: loginIn
              ? PageTransitionType.rightToLeft
              : PageTransitionType.leftToRight,
        ),
      );

  @action
  signin(BuildContext context) async {
    const String mocked_token = '__mocked_token__';

    SharedPreferencesHelper().setAuthToken(mocked_token);
    navigateToRoot(context, true);
  }

  @action
  signout(BuildContext context) async {
    auth.token = emptyToken;
    await SharedPreferencesHelper().setAuthToken(emptyToken);
    navigateToRoot(context, false);
  }
}
