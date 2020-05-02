import 'package:shared_preferences/shared_preferences.dart';

import 'package:vesti_vendas/constants/shared_preferences.dart';

class SharedPreferencesHelper {
  Future<String> get authToken => SharedPreferences.getInstance()
      .then((preference) => preference.getString(Preferences.auth_token));
  Future<void> setAuthToken(String token) =>
      SharedPreferences.getInstance().then(
          (preference) => preference.setString(Preferences.auth_token, token));
}
