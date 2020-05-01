import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:vesti_vendas/models/authentication_model.dart';

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
    // this future is here to simulate the latency from a http request
    Future.delayed(new Duration(milliseconds: 500), () {
      final String token = prefs.getString('@token') ?? emptyToken;

      auth.setToken(token);
      prefs.setString('@token', token);
    });
  }

  @action
  signin() async {
    final prefs = await SharedPreferences.getInstance();
    const String mocked_token = '__mocked_token__';

    auth.setToken(mocked_token);
    prefs.setString('@token', mocked_token);
  }

  @action
  signout() => auth.token = emptyToken;
}
