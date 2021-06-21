import 'dart:convert';
import 'package:charity_desktop/models/Task.dart';
import 'package:http/http.dart' as http;

String token;

Future<List<Task>> get_all_tasks() async {
  final url = Uri.parse('http://127.0.0.1:8000/api/all_task/');
  final header = <String, String>{
    "Content-Type": "application/json",
  };
  if (token.isNotEmpty) header["Authorization"] = "Token $token";
  final response = await http.get(url, headers: header);
  List data = json.decode(response.body);
  return data.map<Task>((json) => Task.fromJson(json)).toList();
}

Future<Task> get_task_detail(int id) async {
  final url = Uri.parse('http://127.0.0.1:8000/api/task/$id/');
  final response = await http.get(url);
  return Task.fromJson(json.decode(response.body));
}

Future<int> update_task(Task task) async {
  final url = Uri.parse('http://127.0.0.1:8000/api/task/${task.id}/');
  final response = await http.put(url, body: task.toJson());
  return response.statusCode;
}

Future<String> get_token(String username, String password) async {
  final url = Uri.parse("http://127.0.0.1:8000/auth/");
  final response = await http.post(url,
      headers: (<String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }),
      body: jsonEncode(
          <String, String>{"username": username, "password": password}));
  if (response.statusCode == 200) {
    token = jsonDecode(response.body)["token"];
    return token;
  }
  return Future.error("error");
}
