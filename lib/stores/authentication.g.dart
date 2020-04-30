// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthenticationStore on _AuthenticationStore, Store {
  Computed<bool> _$loadingComputed;

  @override
  bool get loading =>
      (_$loadingComputed ??= Computed<bool>(() => super.loading)).value;

  final _$authAtom = Atom(name: '_AuthenticationStore.auth');

  @override
  AuthenticationModel get auth {
    _$authAtom.context.enforceReadPolicy(_$authAtom);
    _$authAtom.reportObserved();
    return super.auth;
  }

  @override
  set auth(AuthenticationModel value) {
    _$authAtom.context.conditionallyRunInAction(() {
      super.auth = value;
      _$authAtom.reportChanged();
    }, _$authAtom, name: '${_$authAtom.name}_set');
  }

  final _$_AuthenticationStoreActionController =
      ActionController(name: '_AuthenticationStore');

  @override
  dynamic signin() {
    final _$actionInfo = _$_AuthenticationStoreActionController.startAction();
    try {
      return super.signin();
    } finally {
      _$_AuthenticationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic signout() {
    final _$actionInfo = _$_AuthenticationStoreActionController.startAction();
    try {
      return super.signout();
    } finally {
      _$_AuthenticationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'auth: ${auth.toString()},loading: ${loading.toString()}';
    return '{$string}';
  }
}
