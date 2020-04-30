import 'package:vesti_vendas/models/user_model.dart';

class AuthenticationModel {
  final UserModel user;
  String _token;

  AuthenticationModel({this.user, token});

  String get token => this._token;
  set token(String value) => this._token = value;
}
