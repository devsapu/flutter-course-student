/// One row from JSONPlaceholder `/todos`.
class Todo {
  const Todo({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });

  final int id;
  final int userId;
  final String title;
  final bool completed;

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String? ?? '',
      completed: json['completed'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'title': title,
        'completed': completed,
      };
}
