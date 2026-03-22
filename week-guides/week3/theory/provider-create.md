# Create a Provider with `ChangeNotifier`

---

## What is `ChangeNotifier`?

`ChangeNotifier` is a Flutter class that can tell the UI:

"My data changed, rebuild listeners."

It does this with `notifyListeners()`.

---

## Simple provider example

```dart
class TodoProvider extends ChangeNotifier {
  List<Todo> todos = [];
  bool isLoading = false;

  void setTodos(List<Todo> newTodos) {
    todos = newTodos;
    notifyListeners();
  }
}
```

---

## Why `notifyListeners()` is needed

If you update data but forget `notifyListeners()`, widgets may not rebuild.

So this is important:

1. Change state
2. Call `notifyListeners()`

---

## Add loading state too

```dart
class TodoProvider extends ChangeNotifier {
  List<Todo> todos = [];
  bool isLoading = false;

  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  void setTodos(List<Todo> newTodos) {
    todos = newTodos;
    notifyListeners();
  }
}
```

---

## Register provider in `main.dart`

```dart
runApp(
  ChangeNotifierProvider(
    create: (_) => TodoProvider(),
    child: const MyApp(),
  ),
);
```

Now widgets under `MyApp` can access `TodoProvider`.
