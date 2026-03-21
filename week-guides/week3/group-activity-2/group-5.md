# Group 5 — Handle empty response

**Branch:** `week3b-group-5/empty-response`

---

## Goal

Handle a response that parses to an **empty list** (e.g. use **`_limit=0`** or filter so no items). Show a friendly **“Nothing here”** UI — not a blank white screen.

---

## Steps

1. Branch: `week3b-group-5/empty-response`
2. After **`jsonDecode`**, if `list.isEmpty`, set state with **empty** flag
3. **`build`**: if empty, show **icon + text** (reuse Group 8 ideas)
4. Commit, push, PR

---

## Done when

Empty data shows a clear message; non-empty still shows a list.
