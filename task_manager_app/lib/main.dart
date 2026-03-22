import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager_app/TodoProvider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodoProvider()..fetchTodos(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodoProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Group 1 - Todos')),
      body: RefreshIndicator(
        onRefresh: () => provider.fetchTodos(),
        child: _buildBody(provider),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => provider.fetchTodos(),
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Widget _buildBody(TodoProvider provider) {
    if (provider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (provider.errorMessage != null) {
      return Center(child: Text(provider.errorMessage!, style: const TextStyle(color: Colors.red)));
    }

    if (provider.items.isEmpty) {
      return const Center(child: Text("No items"));
    }

    return ListView.builder(
      itemCount: provider.items.length,
      itemBuilder: (context, index) {
        final todo = provider.items[index];
        return ListTile(
          leading: CircleAvatar(child: Text(todo.id.toString())),
          title: Text(
            todo.title,
            style: TextStyle(
              decoration: todo.completed ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Icon(
            todo.completed ? Icons.check_circle : Icons.radio_button_unchecked,
            color: todo.completed ? Colors.green : Colors.grey,
          ),
        );
      },
    );
  }
}