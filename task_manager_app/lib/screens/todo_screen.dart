import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/todo_provider.dart';

/// Presentation layer: reads provider state and renders loading/data/error UI.
class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<TodoProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Week 3 - Todos')),
      body: _buildBody(context, provider),
      floatingActionButton: FloatingActionButton(
        // listen: false avoids unnecessary rebuild for this button callback.
        onPressed: () => context.read<TodoProvider>().refresh(),
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Widget _buildBody(BuildContext context, TodoProvider provider) {
    if (provider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (provider.errorMessage != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Could not load todos.'),
              const SizedBox(height: 8),
              Text(provider.errorMessage!, textAlign: TextAlign.center),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => provider.loadTodos(),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    if (provider.todos.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('No todos found.'),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: () => provider.loadTodos(),
              child: const Text('Load todos'),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: provider.todos.length,
      itemBuilder: (context, index) {
        final todo = provider.todos[index];
        return ListTile(
          leading: Icon(
            todo.completed ? Icons.check_circle : Icons.radio_button_unchecked,
          ),
          title: Text(todo.title),
          subtitle: Text('Todo #${todo.id}'),
        );
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/todo_provider.dart';


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
      body: _buildBody(context, provider)
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () => context.read<TodoProvider>().refresh(),
    //     child: const Icon(Icons.refresh),
    //   ),
    );
  }

  Widget _buildBody(BuildContext context, TodoProvider provider) {
    if (provider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (provider.errorMessage != null) {
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
                provider.errorMessage!,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => provider.loadTodos(),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    final todos = provider.todos;
    if (todos.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('No todos yet.'),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: () => provider.loadTodos(),
              child: const Text('Load todos'),
            ),
          ],
        ),
      );
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