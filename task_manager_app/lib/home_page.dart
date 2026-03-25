import 'package:flutter/material.dart';
import 'student_registration_screen.dart';
import 'api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiService _apiService = ApiService();
  List<Map<String, dynamic>> _posts = [];
  bool _isLoading = false;

  Future<void> _fetchPosts() async {
    setState(() {
      _isLoading = true;
    });
    try {
      final posts = await _apiService.fetchPosts();
      setState(() {
        _posts = posts;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      // Handle error, maybe show a snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to fetch posts: $e')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Manager'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              size: 64,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 16),
            Text(
              'Welcome to Group 1',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Week 2 – Your first Flutter app',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),

             const SizedBox(height: 30),

            // Fetch Posts Button
            ElevatedButton(
              onPressed: _isLoading ? null : _fetchPosts,
              child: _isLoading
                  ? const CircularProgressIndicator()
                  : const Text('Fetch Posts from API'),
            ),

            const SizedBox(height: 20),

            // Display Posts
            if (_posts.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: _posts.length,
                  itemBuilder: (context, index) {
                    final post = _posts[index];
                    return ListTile(
                      title: Text(post['title'] ?? 'No title'),
                      subtitle: Text(post['body'] ?? 'No body'),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}