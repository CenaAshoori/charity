import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> get_all_tasks() async {
  final url = Uri.parse('http://127.0.0.1:8000/api/all_task/');
  final response = await http.get(url);
  print(response.body);
  return json.decode(response.body) as List;
}
