import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager_app/model/todo_model.dart';
import 'package:task_manager_app/provider/todo_provider.dart';
import 'student_registration_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<TodoProvider>();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Task Manager'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: provider.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: provider.todos.length,
                itemBuilder: (context, index) {
                  final Todo todo = provider.todos[index];
                  return ListTile(
                    title: Text(todo.title),
                  );
                },
              ));
  }
}
