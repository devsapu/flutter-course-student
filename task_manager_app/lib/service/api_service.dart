import 'package:dio/dio.dart';

class ApiService {
  final Dio dio =
      Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  Future<List<String>> fetchAllTodos() async {
  final response = await dio.get("/todos?_limit=10");
  if (response.statusCode == 200) {
    final List<dynamic> data = response.data;
    return data.map((item) {
      return (item as Map<String, dynamic>)['title'] as String;
    }).toList();
  } else {
    throw Exception("Failed to load todos");
  }
}

}
