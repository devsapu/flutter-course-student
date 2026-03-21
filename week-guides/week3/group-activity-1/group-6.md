# Group 6 — Activity 1 (core)

**Branch:** `week3-a1-group-6/jsonplaceholder-posts`

---

## Your API (only yours)

**Endpoint:** `https://jsonplaceholder.typicode.com/posts`  
**Tip:** Add `?_limit=15` if the list feels long.

**Expected JSON:** A **JSON array** of posts.

**Each post often has:**

| Field | Type | Notes |
|--------|------|--------|
| `id` | int | |
| `userId` | int | |
| `title` | String | Short line in list |
| `body` | String | Optional second line (truncate if long) |

---

## What everyone must implement (same for all groups)

1. **Fetch** + parse array.
2. **Display** — **title** (required); **body** optional (first ~80 chars).
3. **Loading** / **Error** / **Empty state**
4. **Provider**
5. **Refresh**
6. **(Optional)** Response time

---

## Steps

1. Branch: `week3-a1-group-6/jsonplaceholder-posts`
2. Commit, push, PR

---

## Help

- Long `body` text: use `substring` with a max length or `Text` with `maxLines`.
