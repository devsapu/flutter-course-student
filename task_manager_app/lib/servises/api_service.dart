import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {

  // 🔹 Posts API
  static Future<List<dynamic>> fetchPosts() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load posts');
    }
  }

  // 🔹 Users API (DummyJSON)
  static Future<List<dynamic>> fetchUsers() async {
    final response = await http.get(
      Uri.parse('https://dummyjson.com/users'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['users']; // MPORTANT
    } else {
      throw Exception('Failed to load users');
    }
  }
}