# Update Provider State from UI

---

## Update by calling provider methods

You usually update state by calling a method on provider, not by editing fields in UI files.

```dart
Provider.of<TodoProvider>(context, listen: false).setTodos(newTodos);
```

---

## Why `listen: false` here?

In button handlers, we want to call a method, not rebuild because of that read.

So we use:

```dart
listen: false
```

This keeps UI logic clear and avoids unnecessary rebuilds.

---

## Common update flow

1. User taps a button
2. UI calls provider method
3. Provider updates state
4. Provider calls `notifyListeners()`
5. Listening widgets rebuild

---

## Example

```dart
FilledButton(
  onPressed: () {
    Provider.of<TodoProvider>(context, listen: false).fetchTodos();
  },
  child: const Text('Refresh'),
)
```

The screen updates when `fetchTodos()` completes and notifies listeners.
