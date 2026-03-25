import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/posts/2';

  Future<List<Map<String, dynamic>>> fetchPosts() async {
    final response = await http.get(Uri.parse(baseUrl), headers: {"Content-Type": "application/json"});

    if (response.statusCode == 200) {
      final List<dynamic> decoded = jsonDecode(response.body);
      return decoded
          .map((item) => Map<String, dynamic>.from(item as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Failed to load posts: ${response.statusCode}');
    }
  }

  Future<Map<String, dynamic>> fetchPost(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/posts/$id'));

    if (response.statusCode == 200) {
      return Map<String, dynamic>.from(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load post: ${response.statusCode}');
    }
  }

  Future<List<Map<String, dynamic>>> fetchTodos() async {
    final response = await http.get(Uri.parse('$baseUrl/todos'));

    if (response.statusCode == 200) {
      final List<dynamic> decoded = jsonDecode(response.body);
      return decoded
          .map((item) => Map<String, dynamic>.from(item as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Failed to load todos: ${response.statusCode}');
    }
  }
}