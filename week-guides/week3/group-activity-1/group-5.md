# Group 5 — Activity 1 (core)

**Branch:** `week3-a1-group-5/reqres-users`

---

## Your API (only yours)

**Endpoint:** `https://reqres.in/api/users`  
**Tip:** User rows are inside **`data`**, not at the top level.

**Expected JSON:**

| Part | Notes |
|------|--------|
| `data` | **List** of user objects |
| `page`, `per_page`, `total` | Pagination info (optional) |

**Each item in `data` often has:**

| Field | Type | Notes |
|--------|------|--------|
| `id` | int | |
| `email` | String | |
| `first_name` | String | |
| `last_name` | String | |
| `avatar` | String | URL — optional `Image.network` later |

---

## What everyone must implement (same for all groups)

1. **Fetch** → `jsonDecode` → loop **`map['data']`** as `List`.
2. **Display** — e.g. `first_name` + `last_name` or `email`.
3. **Loading** / **Error** / **Empty state**
4. **Provider**
5. **Refresh**
6. **(Optional)** Response time

---

## Steps

1. Branch: `week3-a1-group-5/reqres-users`
2. Commit, push, PR

---

## Help

- Wrong list? You probably used the root map as if it were a list — use **`['data']`**.
