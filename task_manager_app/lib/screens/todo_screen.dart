import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/todo_provider.dart';

/// Activity 2 UI:
/// - improved layout
/// - refresh action
/// - pull-to-refresh
/// - optional in-memory search
class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<TodoProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Week 3 - Advanced Todos'),
        actions: [
          IconButton(
            onPressed: () => context.read<TodoProvider>().loadTodos(),
            icon: const Icon(Icons.download),
            tooltip: 'Load todos',
          ),
          IconButton(
            // listen: false avoids rebuild on callback wiring.
            onPressed: () => context.read<TodoProvider>().refresh(),
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => context.read<TodoProvider>().setQuery(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search todos',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            if (provider.lastResponseTimeMs != null)
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Last API response: ${provider.lastResponseTimeMs} ms'),
              ),
            const SizedBox(height: 8),
            Expanded(child: _buildBody(context, provider)),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, TodoProvider provider) {
    final filtered = provider.filteredTodos;

    if (provider.isLoading && filtered.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (provider.errorMessage != null && filtered.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Could not load data'),
            const SizedBox(height: 8),
            Text(provider.errorMessage!, textAlign: TextAlign.center),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: () => context.read<TodoProvider>().loadTodos(useCache: false),
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (filtered.isEmpty) {
      return const Center(child: Text('No todos to display.'));
    }

    return RefreshIndicator(
      onRefresh: () => context.read<TodoProvider>().refresh(),
      child: ListView.separated(
        itemCount: filtered.length,
        separatorBuilder: (_, __) => const SizedBox(height: 6),
        itemBuilder: (context, index) {
          final todo = filtered[index];
          return Card(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              leading: Icon(
                todo.completed ? Icons.check_circle : Icons.radio_button_unchecked,
              ),
              title: Text(todo.title),
              subtitle: Text('Todo #${todo.id}  •  User #${todo.userId}'),
              trailing: IconButton(
                onPressed: () => context.read<TodoProvider>().deleteTodo(todo.id),
                icon: const Icon(Icons.delete_outline),
                tooltip: 'Delete',
              ),
            ),
          );
        },
      ),
    );
  }
}
