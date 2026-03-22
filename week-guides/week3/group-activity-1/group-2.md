# Group 2 — Activity 1 (core)

**Branch:** `week3-a1-group-2/jsonplaceholder-users`

---

## Your API (only yours)

**Endpoint:** `https://jsonplaceholder.typicode.com/users`  
**Tip:** Response is a **JSON array** (no `data` wrapper).

**Expected JSON:** Each object often includes:

| Field | Type | Notes |
|--------|------|--------|
| `id` | int | |
| `name` | String | Good for main line |
| `username` | String | Optional subtitle |
| `email` | String | Optional subtitle |

---

## What everyone must implement (same for all groups)

1. **Fetch** — `http.get`, `async`/`await`, parse JSON.
2. **Display** — `ListView` (e.g. **name** or **name + email**).
3. **Loading** — While waiting.
4. **Error** — User-visible message on failure.
5. **Provider** — `ChangeNotifier` + `ChangeNotifierProvider`.
6. **Refresh** — Reload from network.
7. **Empty state** — Message if list is empty.
8. **(Optional)** Response time in ms.

---

## Steps

1. Branch: `week3-a1-group-2/jsonplaceholder-users`
2. Add `http`, `provider`, implement checklist above
3. Commit, push, PR

---

## Help

- `theory/`, `sample-code/`, `resources/public-apis.md`
