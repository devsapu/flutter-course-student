import 'package:flutter/material.dart';
import 'package:task_manager_app/model/todo_model.dart';
import 'package:task_manager_app/service/api_service.dart';

class TodoProvider extends ChangeNotifier {
  bool isLoading = false;
  String errorMessage = "";
  List<Todo> todos = [];

  Future<List<Todo>> fetchAllTodos() async {
    isLoading = true;
    try {
      todos = await ApiService().fetchAllTodos();
      return todos;
    } catch (e) {
      errorMessage = e.toString();
      return [];
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
