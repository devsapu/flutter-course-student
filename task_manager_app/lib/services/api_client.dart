import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/todo_model.dart';

/// Service layer: keeps network code outside UI widgets.
class ApiService {
  ApiService({http.Client? client}) : _client = client ?? http.Client();

  final http.Client _client;
  static final Uri todosUri =
      Uri.parse('https://jsonplaceholder.typicode.com/todos?_limit=20');

  Future<List<Todo>> fetchTodos() async {
    final response = await _client.get(todosUri);
    if (response.statusCode != 200) {
      throw Exception('Failed with status ${response.statusCode}');
    }

    final list = jsonDecode(response.body) as List<dynamic>;
    return list
        .map((item) => Todo.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
