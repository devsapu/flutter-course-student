# Group 3 — Activity 1 (core)

**Branch:** `week3-a1-group-3/dummyjson-products`

---

## Your API (only yours)

**Endpoint:** `https://dummyjson.com/products`  
**Tip:** Response is an **object** with a **`products`** array (not a bare array at the top level).

**Expected JSON (shape):**

| Part | Notes |
|------|--------|
| `products` | List of product objects |
| Each product | Often `id`, `title`, `price`, `thumbnail` (optional) |

**Example fields per product:**

| Field | Type | Notes |
|--------|------|--------|
| `id` | int | |
| `title` | String | List title |
| `price` | num | Optional in subtitle |

---

## What everyone must implement (same for all groups)

1. **Fetch** — `http.get` → `jsonDecode` → read **`response['products']`** as `List`.
2. **Display** — `ListView` of product **title** (and optional price).
3. **Loading** / **Error** / **Empty state**
4. **Provider** for list + flags
5. **Refresh**
6. **(Optional)** Response time

---

## Steps

1. Branch: `week3-a1-group-3/dummyjson-products`
2. Parse the **wrapper** object correctly (`products` key).
3. Commit, push, PR

---

## Help

- If you see `type 'List' is not a subtype...` — you parsed the wrong level; use `['products']`.
