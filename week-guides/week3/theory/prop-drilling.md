# Prop drilling

---

## The problem

Imagine you have:

`App` → `HomePage` → `TodoList` → `TodoTile`

The **user name** (or **todo list**) lives at the top, but only **`TodoTile`** needs to show it.

You end up **passing the same data through every layer**:

```dart
App(userName: name)
  → HomePage(userName: name)
    → TodoList(userName: name)
      → TodoTile(userName: name)
```

This is **prop drilling**: passing props through widgets that **don’t use** them, only to reach a **child** far below.

---

## Why it hurts

- Many files change when you add one new field.
- Easy to make mistakes (wrong parameter order).
- Hard to read and maintain.

---

## What to do instead (preview)

For **deep** or **shared** data, lift state up and use a **single place** everyone can read:

- **Provider** (this course)
- Or other solutions (Riverpod, Bloc, etc.) later

See [provider.md](provider.md).

---

## Simple mental picture

**Prop drilling** = passing a backpack hand-to-hand through a long line of people.

**Provider** = putting the backpack on a **hook on the wall** — anyone who needs it can take it, without passing through every person.
