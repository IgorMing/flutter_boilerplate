import 'package:shared_preferences/shared_preferences.dart';

import 'package:vesti_vendas/constants/shared_preferences.dart';

class SharedPreferencesHelper {
  final SharedPreferences _prefs;

  const SharedPreferencesHelper(this._prefs);

  String get authToken => this._prefs.getString(Preferences.auth_token);
  // TODO consider use like this below
  // SharedPreferences.getInstance()
  //     .then((preference) => preference.getString(Preferences.auth_token));
  setAuthToken(String token) =>
      this._prefs.setString(Preferences.auth_token, token);
}
