# Diagram: Provider state flow

```mermaid
flowchart LR
  A[User Action] --> B[Provider Method]
  B --> C[State Update]
  C --> D[notifyListeners]
  D --> E[UI Rebuild]
```

Simple example:

- User taps **Refresh**
- `TodoProvider.fetchTodos()` runs
- `loading`, `todos`, or `error` changes
- `notifyListeners()` is called
- UI updates automatically
