import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentListScreen extends StatelessWidget {
  const StudentListScreen({super.key});

  final List<Student> _students = const [
    Student(name: 'Alice Johnson', id: 'S001', course: 'Biology'),
    Student(name: 'Bob Smith', id: 'S002', course: 'Mathematics'),
    Student(name: 'Carol Lee', id: 'S003', course: 'Computer Science'),
    Student(name: 'David Kim', id: 'S004', course: 'Chemistry'),
    Student(name: 'Eva Martínez', id: 'S005', course: 'Physics'),
    Student(name: 'Frank Miller', id: 'S006', course: 'History'),
    Student(name: 'Grace Wilson', id: 'S007', course: 'Economics'),
    Student(name: 'Henry Clark', id: 'S008', course: 'English Literature'),
    Student(name: 'Isabella Davis', id: 'S009', course: 'Psychology'),
    Student(name: 'Jack Thompson', id: 'S010', course: 'Engineering'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.separated(
        itemCount: _students.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final s = _students[index];
          return ListTile(
            title: Text(s.name),
            subtitle: Text('ID: ${s.id}  •  Course: ${s.course}'),
            leading: CircleAvatar(child: Text(s.name.substring(0, 1))),
          );
        },
      ),
    );
  }
}
