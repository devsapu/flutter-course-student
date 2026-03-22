import 'dart:convert';

import 'package:http/http.dart' as http;

import 'todo_model.dart';

/// Fetches todos from a free demo API (JSONPlaceholder).
class ApiService {
  ApiService({http.Client? client}) : _client = client ?? http.Client();

  final http.Client _client;

  static final Uri todosUri =
      Uri.parse('https://jsonplaceholder.typicode.com/todos?_limit=10');

  Future<List<Todo>> fetchTodos() async {
    final response = await _client.get(todosUri);

    if (response.statusCode != 200) {
      throw Exception('HTTP ${response.statusCode}');
    }

    final list = jsonDecode(response.body) as List<dynamic>;
    return list
        .map((e) => Todo.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
