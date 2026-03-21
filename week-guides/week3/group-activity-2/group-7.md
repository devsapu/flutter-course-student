# Group 7 — Simple in-memory cache

**Branch:** `week3b-group-7/cache`

---

## Goal

After the **first** successful fetch, **store** the list in a **`List`** or provider field. If user taps **Refresh**, **first** show cached data **immediately**, **then** fetch in background and **update** if new data arrives.

---

## Steps

1. Branch: `week3b-group-7/cache`
2. Fields: **`cachedTodos`**, **`lastFetchTime`** (optional)
3. On refresh: don’t clear UI to empty — keep showing cache until new data returns
4. Commit, push, PR

---

## Done when

Second load feels instant for the user (old list visible while updating).
