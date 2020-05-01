import 'package:mobx/mobx.dart';
import 'package:vesti_vendas/models/authentication_model.dart';

part 'authentication.g.dart';

class AuthenticationStore = _AuthenticationStore with _$AuthenticationStore;

abstract class _AuthenticationStore with Store {
  @observable
  AuthenticationModel auth = AuthenticationModel();

  @computed
  bool get loading => auth.token == null;

  @action
  signin() {
    // this future is here to simulate the latency from a http request
    Future.delayed(new Duration(seconds: 3), () {
      const String mocked_token = '__mocked_token__';
      auth.setToken(mocked_token);
    });
  }

  @action
  signout() => auth.token = '';
}
