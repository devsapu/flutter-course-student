import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task_manager_app/product_model.dart';

/// Fetches products from a free demo API (JSONPlaceholder).
class ApiService {
  ApiService({http.Client? client}) : _client = client ?? http.Client();

  final http.Client _client;

  static final Uri todosUri = Uri.parse('https://dummyjson.com/products');

  Future<List<Product>> fetchProducts() async {
    final response = await _client.get(todosUri);

    if (response.statusCode != 200) {
      throw Exception('HTTP ${response.statusCode}');
    }

    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final list = data['products'] as List<dynamic>;
    return list
        .map((e) => Product.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
