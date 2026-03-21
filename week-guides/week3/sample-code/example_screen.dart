import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'todo_provider.dart';

/// Example screen: shows loading, error, or a list from [TodoProvider].
class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<TodoProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Week 3 — Todos'),
      ),
      body: _buildBody(context, provider),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<TodoProvider>().refresh(),
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Widget _buildBody(BuildContext context, TodoProvider provider) {
    if (provider.loading && provider.todos.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (provider.error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Something went wrong',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                provider.error!,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => provider.fetchTodos(),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    final todos = provider.todos;
    if (todos.isEmpty) {
      return const Center(child: Text('No todos yet.'));
    }

    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        return ListTile(
          leading: Icon(
            todo.completed ? Icons.check_circle : Icons.radio_button_unchecked,
          ),
          title: Text(todo.title),
        );
      },
    );
  }
}
