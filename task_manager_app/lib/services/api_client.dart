import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/todo_model.dart';

/// Service layer: only responsible for talking to the API.
class ApiService {
  ApiService({http.Client? client}) : _client = client ?? http.Client();

  final http.Client _client;

  static final Uri _todosUri =
      Uri.parse('https://jsonplaceholder.typicode.com/todos?_limit=15');

  /// Fetch todos from API and map JSON into strongly typed models.
  Future<List<Todo>> fetchTodos() async {
    final response = await _client.get(_todosUri);
    if (response.statusCode != 200) {
      throw Exception('Failed to load todos. Status: ${response.statusCode}');
    }

    final list = jsonDecode(response.body) as List<dynamic>;
    return list
        .map((item) => Todo.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
