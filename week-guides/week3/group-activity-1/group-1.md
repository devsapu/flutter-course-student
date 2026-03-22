# Group 1 — Activity 1 (core)

**Branch:** `week3-a1-group-1/jsonplaceholder-todos`

---

## Your API (only yours)

**Endpoint:** `https://jsonplaceholder.typicode.com/todos`  
**Tip:** Add `?_limit=20` to keep the response small.

**Expected JSON:** An **array** of objects. Each item usually has:

| Field | Type | Notes |
|--------|------|--------|
| `id` | int | |
| `userId` | int | |
| `title` | String | Good for list text |
| `completed` | bool | Optional: show icon or strikethrough |

---

## What everyone must implement (same for all groups)

1. **Fetch** — `http.get`, `async`/`await`, parse JSON (`dart:convert`).
2. **Display** — Show items in a `ListView` (title at minimum).
3. **Loading** — Spinner or text while waiting.
4. **Error** — User-visible message if the request fails (not only `print`).
5. **Provider** — `ChangeNotifier` holding list + loading + error; `ChangeNotifierProvider` in `main.dart`.
6. **Refresh** — Button or `RefreshIndicator` to load again.
7. **Empty state** — If the list is empty after a successful parse, show a short message (e.g. “No items”).
8. **(Optional)** Print or show **response time** in ms (see `sample-code/performance_logger.dart`).

---

## Steps

1. `git checkout main && git pull` → create branch `week3-a1-group-1/jsonplaceholder-todos`
2. Add `http` and `provider` to `pubspec.yaml`, run `flutter pub get`
3. Build fetch → UI first; then move state into a Provider
4. Commit, push, open PR as your instructor directs

---

## Help

- Week 3: `theory/api-and-async.md`, `theory/provider.md`, `sample-code/`
