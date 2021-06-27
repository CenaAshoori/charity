import 'dart:convert';
import 'package:charity_desktop/utility/shared_preferences.dart';
import 'package:http/http.dart' as http;

// with sending username and password to server , server'll get u a token
// that we can use this token instead of sending our username and password
// for each request
Future<bool> login(String username, String password) async {
  final url = Uri.parse("http://127.0.0.1:8000/auth/");
  final response = await http.post(url,
      headers: (<String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }),
      body: jsonEncode(
          <String, String>{"username": username, "password": password}));
  if (response.statusCode == 200) {
    String token = jsonDecode(response.body)["token"];
    await set_login_token(token);
    return true;
  }
  return Future.error("error");
}
