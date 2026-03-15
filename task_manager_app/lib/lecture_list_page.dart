import 'package:flutter/material.dart';

class LectureListPage extends StatelessWidget {
  LectureListPage({super.key});

  final List<String> lectures = [
    "Niroth",
    "Frank",
    "Dinuka",
    "Sapumal",
    "Dewmal"
  ];

  final List<String> techStack = [
    "Java",
    "Spring boot",
    "Data Structures",
    "Flutter",
    "AI/ML"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lecture Lists"),
        ),
        body: ListView.builder(
          itemCount: lectures.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.person, color: Colors.blue, size: 32),
              title: Text(
                lectures[index],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              subtitle: Text(
                techStack[index],
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios,
                  size: 16, color: Colors.grey),
            );
          },
        ));
  }
}
