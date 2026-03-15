import 'package:flutter/material.dart';
import 'package:task_manager_app/lecture_list_page.dart';
import 'home_page.dart';

void main() {
  runApp(const TaskManagerApp());
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
      routes: {
        '/lecture-list': (context) => LectureListPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
