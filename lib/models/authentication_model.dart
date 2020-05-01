import 'package:mobx/mobx.dart';

import 'package:vesti_vendas/models/user_model.dart';

part 'authentication_model.g.dart';

class AuthenticationModel = _AuthenticationModel with _$AuthenticationModel;

abstract class _AuthenticationModel with Store {
  UserModel user;

  @observable
  String token;

  @action
  setToken(String value) => this.token = value;
}
