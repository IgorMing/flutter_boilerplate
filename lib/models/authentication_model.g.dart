// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthenticationModel on _AuthenticationModel, Store {
  final _$tokenAtom = Atom(name: '_AuthenticationModel.token');

  @override
  String get token {
    _$tokenAtom.context.enforceReadPolicy(_$tokenAtom);
    _$tokenAtom.reportObserved();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.context.conditionallyRunInAction(() {
      super.token = value;
      _$tokenAtom.reportChanged();
    }, _$tokenAtom, name: '${_$tokenAtom.name}_set');
  }

  final _$_AuthenticationModelActionController =
      ActionController(name: '_AuthenticationModel');

  @override
  dynamic setToken(String value) {
    final _$actionInfo = _$_AuthenticationModelActionController.startAction();
    try {
      return super.setToken(value);
    } finally {
      _$_AuthenticationModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'token: ${token.toString()}';
    return '{$string}';
  }
}
