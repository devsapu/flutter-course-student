# Group 6 — Use provider in UI

**Branch:** `week3-group-6/provider-ui`

---

## Goal

Wrap the app with **`ChangeNotifierProvider`**, use **`context.watch<TodoProvider>()`** to show loading / list / error.

---

## Steps

1. Branch: `week3-group-6/provider-ui`
2. In **`main.dart`**, wrap **`MaterialApp`** with **`ChangeNotifierProvider`** (create your `TodoProvider`)
3. Build a screen with **`Consumer`** or **`context.watch`** — match `sample-code/example_screen.dart`
4. Add a **Refresh** **`FloatingActionButton`** that calls **`loadTodos()`**
5. Commit, push, PR

---

## Done when

List updates from provider; refresh triggers reload.
