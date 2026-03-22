import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'user.dart';

class UserProvider extends ChangeNotifier {
  List<User> _users = [];
  bool _isLoading = false;
  String? _errorMessage;
  int? _responseTimeMs;

  List<User> get users => _users;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  int? get responseTimeMs => _responseTimeMs;
  bool get isEmpty => _users.isEmpty;

  Future<void> fetchUsers() async {
    _isLoading = true;
    _errorMessage = null;
    _responseTimeMs = null;
    notifyListeners();

    try {
      final stopwatch = Stopwatch()..start();

      final response = await http
          .get(
            Uri.parse('https://jsonplaceholder.typicode.com/users'),
          )
          .timeout(const Duration(seconds: 10));

      stopwatch.stop();
      _responseTimeMs = stopwatch.elapsedMilliseconds;

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        _users = jsonData.map((json) => User.fromJson(json)).toList();
        _errorMessage = null;
      } else {
        _errorMessage = 'Failed to load users (Status: ${response.statusCode})';
        _users = [];
      }
    } on http.ClientException catch (e) {
      _errorMessage = 'Network error: ${e.message}';
      _users = [];
    } catch (e) {
      _errorMessage = 'Error: ${e.toString()}';
      _users = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refreshUsers() async {
    await fetchUsers();
  }
}
