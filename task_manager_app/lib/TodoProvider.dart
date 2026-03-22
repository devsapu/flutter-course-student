import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task_manager_app/Todo.dart';
import 'dart:convert';


class TodoProvider with ChangeNotifier {
  List<Todo> _items = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<Todo> get items => _items;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> fetchTodos() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final stopwatch = Stopwatch()..start();

    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/todos?_limit=20'),
      );

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        _items = data.map((item) => Todo.fromJson(item)).toList();
      } else {
        _errorMessage = "Server Error: ${response.statusCode}";
      }
    } catch (e) {
      _errorMessage = "Failed to load data. Please check your connection.";
    } finally {
      _isLoading = false;
      stopwatch.stop();
      print("Fetch took: ${stopwatch.elapsedMilliseconds}ms"); // Performance log
      notifyListeners();
    }
  }
}