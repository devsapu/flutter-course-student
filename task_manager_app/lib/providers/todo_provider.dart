import 'package:flutter/foundation.dart';

import '../models/todo_model.dart';
import '../services/api_client.dart';

/// Provider layer: owns screen state and business flow for todos.
class TodoProvider extends ChangeNotifier {
  TodoProvider({ApiService? apiService})
      : _apiService = apiService ?? ApiService();

  final ApiService _apiService;

  List<Todo> _todos = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<Todo> get todos => List.unmodifiable(_todos);
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  /// Fetch data from API and update provider state.
  /// We call notifyListeners so listening UI widgets rebuild.
  Future<void> loadTodos() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners(); // notify UI to show loading state

    try {
      _todos = await _apiService.fetchTodos();
    } catch (e) {
      _errorMessage = e.toString();
      _todos = [];
    } finally {
      _isLoading = false;
      notifyListeners(); // notify UI to show final data/error state
    }
  }

  /// Refresh uses the same loading flow for clarity.
  Future<void> refresh() => loadTodos();
}
import 'package:flutter/material.dart';
import '../models/todo_model.dart';
import '../services/apiClient.dart';


class TodoProvider extends ChangeNotifier {
  TodoProvider({ApiService? apiService})
      : _apiService = apiService ?? ApiService();

  final ApiService _apiService;

  List<Todo> todos = [];
  bool isLoading = false;
  String? errorMessage;

  void setTodos(List<Todo> newTodos) {
    todos = newTodos;
    notifyListeners();
  }

  Future<void> loadTodos() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      todos = await _apiService.fetchTodos();
    } catch (e) {
      errorMessage = e.toString();
      todos = [];
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}