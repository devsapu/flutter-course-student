# Provider Best Practices

---

## 1) Keep business logic out of UI

Avoid writing API parsing and state rules directly in widgets.

- UI should focus on layout and user actions
- Provider/service should handle data logic

---

## 2) Keep API calls in provider or service

A clean pattern:

- Service: HTTP requests + parsing
- Provider: loading/error/data state
- UI: display and interactions

---

## 3) Avoid unnecessary provider calls in `build()`

Do not trigger network calls repeatedly inside `build()`.

Bad pattern:

```dart
@override
Widget build(BuildContext context) {
  Provider.of<TodoProvider>(context, listen: false).fetchTodos(); // avoid
  ...
}
```

Better:

- Call once from `initState()` in a `StatefulWidget`
- Or trigger from user actions (button, pull to refresh)

---

## 4) Keep separation of concerns

Good separation makes code easier to test and teach:

- `api_service.dart` -> talks to server
- `todo_provider.dart` -> app state + notify
- `example_screen.dart` -> UI

---

## 5) Handle loading, error, empty explicitly

In provider, keep clear state fields:

- `loading`
- `error`
- `todos`

This gives students a predictable UI pattern.
