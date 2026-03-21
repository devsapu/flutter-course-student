import 'package:flutter/foundation.dart';

import 'api_service.dart';
import 'todo_model.dart';

/// Holds todo list + loading/error for the UI.
class TodoProvider extends ChangeNotifier {
  TodoProvider({ApiService? api}) : _api = api ?? ApiService();

  final ApiService _api;

  List<Todo> _todos = [];
  bool _loading = false;
  String? _error;

  List<Todo> get todos => List.unmodifiable(_todos);
  bool get loading => _loading;
  String? get error => _error;

  Future<void> loadTodos() async {
    _loading = true;
    _error = null;
    notifyListeners();

    try {
      _todos = await _api.fetchTodos();
    } catch (e) {
      _error = e.toString();
      _todos = [];
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  /// Optional: clear error and try again (same as load for this sample).
  Future<void> refresh() => loadTodos();
}
