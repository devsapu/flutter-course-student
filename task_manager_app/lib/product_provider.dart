import 'package:flutter/foundation.dart';
import 'package:task_manager_app/api_service.dart';
import 'package:task_manager_app/product_model.dart';

/// Beginner-friendly Provider example:
/// - fetches todos from API
/// - exposes loading/error/data state
/// - calls notifyListeners so UI rebuilds
class ProductProvider extends ChangeNotifier {
  ProductProvider({ApiService? api}) : _api = api ?? ApiService();

  final ApiService _api;

  List<Product> _todos = [];
  bool _loading = false;
  String? _error;

  List<Product> get todos => List.unmodifiable(_todos);
  bool get loading => _loading;
  String? get error => _error;

  /// Full flow:
  /// 1) set loading
  /// 2) call API
  /// 3) save data or error
  /// 4) notify UI
  Future<void> fetchProducts() async {
    _loading = true;
    _error = null;
    notifyListeners();

    try {
      _todos = await _api.fetchProducts();
    } catch (e) {
      _error = e.toString();
      _todos = [];
    } finally {
      _loading = false;
      notifyListeners();
    }
  }

  /// Alias kept for compatibility with older docs/screens.
  Future<void> loadProducts() => fetchProducts();

  /// Refresh button can call the same method.
  Future<void> refresh() => fetchProducts();

  /// Simple setter example for teaching manual updates.
  void setProducts(List<Product> newProducts) {
    _todos = List<Product>.from(newProducts);
    notifyListeners();
  }
}
