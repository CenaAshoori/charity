import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> pref = SharedPreferences.getInstance();

// add login token after sending username and password to server and get that token
Future<String> get_login_token() async {
  return await pref.then((value) {
    return value.getString('login_token');
  });
}

// set login token for future request that gonna be sent
Future<bool> set_login_token(String token) async {
  return await pref.then((value) async {
    return await value.setString("login_token", token);
  });
}

// For deleteing login token for any reason like log out
Future<bool> delete_login_token() async {
  return await pref.then((value) async {
    return await value.remove("login_token");
  });
}
