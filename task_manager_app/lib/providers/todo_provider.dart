import 'package:flutter/foundation.dart';

import '../models/todo_model.dart';
import '../services/api_client.dart';
import '../utils/performance_logger.dart';

/// Advanced provider for Activity 2.
/// Handles retry, caching, search/filter, and response-time tracking.
class TodoProvider extends ChangeNotifier {
  TodoProvider({ApiService? apiService})
      : _apiService = apiService ?? ApiService();

  final ApiService _apiService;

  List<Todo> _todos = [];
  List<Todo> _cachedTodos = [];
  bool _isLoading = false;
  String? _errorMessage;
  int? _lastResponseTimeMs;
  String _query = '';

  List<Todo> get todos => List.unmodifiable(_todos);
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  int? get lastResponseTimeMs => _lastResponseTimeMs;
  String get query => _query;

  /// Filter list in memory to keep UI responsive.
  List<Todo> get filteredTodos {
    if (_query.trim().isEmpty) return todos;
    final lower = _query.toLowerCase();
    return todos.where((todo) => todo.title.toLowerCase().contains(lower)).toList();
  }

  /// Refresh data from API with retry and performance measurement.
  Future<void> loadTodos({bool useCache = true}) async {
    // Show cached values immediately so users see existing data while refreshing.
    if (useCache && _cachedTodos.isNotEmpty) {
      _todos = List<Todo>.from(_cachedTodos);
    }

    _isLoading = true;
    _errorMessage = null;
    notifyListeners(); // notify UI to show loading/progress state

    try {
      // Measure API duration so students can visualize latency in UI.
      final measured = await PerformanceLogger.measure(
        () => _fetchWithRetry(maxAttempts: 3),
      );
      _todos = measured.data;
      _cachedTodos = List<Todo>.from(measured.data); // in-memory cache
      _lastResponseTimeMs = measured.durationMs;
    } catch (e) {
      _errorMessage = e.toString();
      // Keep cached todos visible if available; otherwise show empty/error state.
      if (_cachedTodos.isEmpty) {
        _todos = [];
      }
    } finally {
      _isLoading = false;
      notifyListeners(); // notify UI to rebuild with final state
    }
  }

  /// Retry network calls to handle temporary issues (network blips, slow API).
  Future<List<Todo>> _fetchWithRetry({int maxAttempts = 3}) async {
    int attempt = 0;
    while (true) {
      attempt++;
      try {
        return await _apiService.fetchTodos();
      } catch (e) {
        if (attempt >= maxAttempts) rethrow;
        // Small delay before retry to avoid hammering the API immediately.
        await Future<void>.delayed(Duration(milliseconds: 400 * attempt));
      }
    }
  }

  /// Update search text; notify UI to refresh filtered list only.
  void setQuery(String value) {
    _query = value;
    notifyListeners();
  }

  /// Remove a todo locally (educational delete action for the list UI).
  void deleteTodo(int id) {
    _todos = _todos.where((todo) => todo.id != id).toList();
    _cachedTodos = _cachedTodos.where((todo) => todo.id != id).toList();
    notifyListeners();
  }

  Future<void> refresh() => loadTodos(useCache: true);
}
