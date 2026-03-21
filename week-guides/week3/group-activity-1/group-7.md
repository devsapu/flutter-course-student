# Group 7 — Activity 1 (core)

**Branch:** `week3-a1-group-7/dummyjson-comments`

---

## Your API (only yours)

**Endpoint:** `https://dummyjson.com/comments`  
**Tip:** Wrapper object with **`comments`** array.

**Expected JSON:**

| Part | Notes |
|------|--------|
| `comments` | List |
| Each item | Often `id`, `body`, `postId`, `user` (nested) |

**Useful fields:**

| Field | Type | Notes |
|--------|------|--------|
| `body` | String | Main text (may be long — truncate in list) |
| `id` | int | |
| `postId` | int | Optional subtitle |

---

## What everyone must implement (same for all groups)

1. **Fetch** → parse **`comments`** list.
2. **Display** — show **body** (truncated) or id + snippet.
3. **Loading** / **Error** / **Empty state**
4. **Provider**
5. **Refresh**
6. **(Optional)** Response time

---

## Steps

1. Branch: `week3-a1-group-7/dummyjson-comments`
2. Commit, push, PR

---

## Help

- If `user` is a nested map, access with care (`comment['user']?['username']` etc.) only if you need it.
