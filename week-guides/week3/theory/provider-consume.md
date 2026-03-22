# Consume Provider in UI

---

## Read data using `Provider.of`

```dart
final todos = Provider.of<TodoProvider>(context).todos;
```

This reads provider data in the widget tree.

---

## `listen: true` vs `listen: false`

`listen: true` (default):

- Widget rebuilds when provider calls `notifyListeners()`
- Good for showing values in UI

`listen: false`:

- Widget does not rebuild from this read
- Good for button actions and method calls

Examples:

```dart
// Rebuild when data changes
final provider = Provider.of<TodoProvider>(context); // listen: true

// No rebuild, just call method
Provider.of<TodoProvider>(context, listen: false).fetchTodos();
```

---

## Using `Consumer` (optional)

`Consumer` helps rebuild only a small part of UI:

```dart
Consumer<TodoProvider>(
  builder: (context, provider, child) {
    return Text('Items: ${provider.todos.length}');
  },
)
```

This can be cleaner and more efficient than rebuilding the whole screen.

---

## Key idea

When provider state changes and `notifyListeners()` runs, listening UI rebuilds automatically.
