import 'package:dio/dio.dart';
import 'package:task_manager_app/model/todo_model.dart';

class ApiService {
  final Dio dio =
      Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  Future<List<Todo>> fetchAllTodos() async {
    final response = await dio.get("/todos?_limit=10");
    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      return data
          .map((item) => Todo.fromJson(item as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception("Failed to load todos");
    }
  }
}
