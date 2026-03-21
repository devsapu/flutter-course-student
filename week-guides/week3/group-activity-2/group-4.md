# Group 4 — Retry if API fails

**Branch:** `week3b-group-4/retry`

---

## Goal

If **`http.get`** throws or returns **status ≠ 200**, **retry** up to **3 times** with a short **`Future.delayed`** between tries.

---

## Steps

1. Branch: `week3b-group-4/retry`
2. Implement a **`Future<T> fetchWithRetry<T>(...)`** helper
3. Test with a **bad URL** first — should fail after 3 tries; then **good URL** — should succeed on try 1
4. Show user a **`SnackBar`** or text: “Failed after 3 attempts”
5. Commit, push, PR

---

## Done when

Controlled test shows retry logic running (use prints in loop).
