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
  Computed<bool> _$isAuthenticatedComputed;

  @override
  bool get isAuthenticated => (_$isAuthenticatedComputed ??=
          Computed<bool>(() => super.isAuthenticated))
      .value;

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

  final _$checkAuthAsyncAction = AsyncAction('checkAuth');

  @override
  Future checkAuth() {
    return _$checkAuthAsyncAction.run(() => super.checkAuth());
  }

  final _$signinAsyncAction = AsyncAction('signin');

  @override
  Future signin(BuildContext context) {
    return _$signinAsyncAction.run(() => super.signin(context));
  }

  final _$signoutAsyncAction = AsyncAction('signout');

  @override
  Future signout(BuildContext context) {
    return _$signoutAsyncAction.run(() => super.signout(context));
  }

  @override
  String toString() {
    final string =
        'auth: ${auth.toString()},loading: ${loading.toString()},isAuthenticated: ${isAuthenticated.toString()}';
    return '{$string}';
  }
}
