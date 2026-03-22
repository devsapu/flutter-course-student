class Todo {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  Todo({required this.id, required this.userId, required this.title, required this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}