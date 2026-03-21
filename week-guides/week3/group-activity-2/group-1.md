# Group 1 — Activity 2 (advanced / optional)

**Branch:** `week3-a2-group-1/jsonplaceholder-todos`

**Same API as Activity 1:** `https://jsonplaceholder.typicode.com/todos` (e.g. `?_limit=20`)

---

## Advanced tasks (same type for every group)

Work on **your** Activity 1 code. Add as many as you can:

- **Retry** — If `http.get` fails or status ≠ 200, retry up to **2–3 times** with a short pause (`Future.delayed`).
- **Latency** — Show **last request time in ms** on screen (use `DateTime` or `sample-code/performance_logger.dart`).
- **UI** — Cards, padding, or clearer typography (pick 1–2 improvements).
- **Cache** — Keep last good list in memory; on refresh, show old data until new data arrives.
- **Refresh** — `RefreshIndicator` or obvious refresh button (polish if you already have it).
- **Filter / search** — `TextField` that filters the **current list** by title (in memory).

---

## Steps

1. Continue from Activity 1 branch or create `week3-a2-group-1/jsonplaceholder-todos` from `main`.
2. Implement 2+ tasks above; prioritize **retry** + **latency** if time is short.
3. Commit, push, PR

---

## Help

- `group-activity-2/instructor-guide.md` — when to skip or simplify this activity.
