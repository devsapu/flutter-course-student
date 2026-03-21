import 'package:flutter/foundation.dart';

import 'api_service.dart';
import 'todo_model.dart';

/// Beginner-friendly Provider example:
/// - fetches todos from API
/// - exposes loading/error/data state
/// - calls notifyListeners so UI rebuilds
class TodoProvider extends ChangeNotifier {
  TodoProvider({ApiService? api}) : _api = api ?? ApiService();

  final ApiService _api;

  List<Todo> _todos = [];
  bool _loading = false;
  String? _error;

  List<Todo> get todos => List.unmodifiable(_todos);
  bool get loading => _loading;
  String? get error => _error;

  /// Full flow:
  /// 1) set loading
  /// 2) call API
  /// 3) save data or error
  /// 4) notify UI
  Future<void> fetchTodos() async {
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

  /// Alias kept for compatibility with older docs/screens.
  Future<void> loadTodos() => fetchTodos();

  /// Refresh button can call the same method.
  Future<void> refresh() => fetchTodos();

  /// Simple setter example for teaching manual updates.
  void setTodos(List<Todo> newTodos) {
    _todos = List<Todo>.from(newTodos);
    notifyListeners();
  }
}
