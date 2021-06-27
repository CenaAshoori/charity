import 'dart:convert';
import 'package:charity_desktop/models/Task.dart';
import 'package:charity_desktop/utility/shared_preferences.dart';
import 'package:http/http.dart' as http;

// get all task of the charity
Future<List<Task>> get_all_tasks() async {
  String token = await get_login_token();
  final url = Uri.parse('http://127.0.0.1:8000/api/all_task/');
  final header = <String, String>{
    "Content-Type": "application/json",
  };
  if (token != null) header["Authorization"] = "Token $token";
  final response = await http.get(url, headers: header);
  List data = json.decode(response.body);
  return data.map<Task>((json) => Task.fromJson(json)).toList();
}

// for more info about Task
Future<Task> get_task_detail(int id) async {
  String token = await get_login_token();
  final url = Uri.parse('http://127.0.0.1:8000/api/task/$id/');
  final response = await http.get(url);
  return Task.fromJson(json.decode(response.body));
}

// update task api
Future<int> update_task(Task task) async {
  String token = await get_login_token();
  final url = Uri.parse('http://127.0.0.1:8000/api/task/${task.id}/');
  final response = await http.put(url, body: task.toJson());
  return response.statusCode;
}
