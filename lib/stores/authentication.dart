import 'dart:io';

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
    print('iniciou o signin');
    return Future.delayed(Duration(seconds: 3), () {
      auth.token = 'another';
      print('finalizou o signin');
    });
  }

  @action
  signout() => auth.token = '';
}
