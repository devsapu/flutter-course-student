# Group 2 — Display list

**Branch:** `week3-group-2/display-list`

---

## Goal

Parse JSON from `https://jsonplaceholder.typicode.com/todos?_limit=10` and show **titles** in a **`ListView`**.

---

## Steps

1. `git checkout main && git pull`, then `git checkout -b week3-group-2/display-list`
2. Add `http` + `dart:convert` — use `jsonDecode` to get a `List`
3. Create a small **`Todo`** class or use `Map` for speed
4. Store the list in **`State`** and call **`setState`** after fetch
5. **`ListView.builder`** for rows — show `title` text
6. Commit, push, PR to instructor’s target branch

---

## Done when

Scrolling list of todo titles appears on screen.
