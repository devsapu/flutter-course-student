import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager_app/provider/todo_provider.dart';
import 'student_registration_screen.dart';
import 'home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => TodoProvider()..fetchAllTodos(),
    child: const TaskManagerApp(),
  ));
}

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
      // home: const StudentRegistrationScreen(),
    );
  }
}
