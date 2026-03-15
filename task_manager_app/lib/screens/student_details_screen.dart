import 'package:flutter/material.dart';

class Student {
  final String name;
  final String id;
  final String course;

  Student({
    required this.name,
    required this.id,
    required this.course,
  });
}

final students = [
  Student(name: "John Doe", id: "S001", course: "CS"),
  Student(name: "Jane Smith", id: "S002", course: "IT"),
];

class StudentDetailsScreen extends StatelessWidget {
  const StudentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Students Details"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Student Details Screen"),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(students[index].name),
                    subtitle: Text(students[index].course),
                    trailing: Text(students[index].id),
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
