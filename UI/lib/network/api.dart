import 'dart:convert';
import 'package:charity_desktop/models/Task.dart';
import 'package:http/http.dart' as http;

Future<List<Task>> get_all_tasks() async {
  final url = Uri.parse('http://127.0.0.1:8000/api/all_task/');
  final response = await http.get(url);
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

Future<String> get_token(String username, String password) {
  final url = Uri.parse("http://127.0.0.1:8000/api/auth");
}
