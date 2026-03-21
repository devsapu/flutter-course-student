# Group 3 — Loading indicator

**Branch:** `week3-group-3/loading-indicator`

---

## Goal

While the API request is running, show a **`CircularProgressIndicator`**. Hide it when data arrives or an error happens.

---

## Steps

1. Branch: `week3-group-3/loading-indicator`
2. Add a `bool _loading = false` in state
3. Before `await http.get`, set `_loading = true` and **`setState`**
4. In **`finally`**, set `_loading = false` and **`setState`**
5. In **`build`**, if `_loading`, show centered spinner; else show list or message
6. Commit, push, PR

---

## Done when

User sees a spinner briefly, then the list (or error UI).
