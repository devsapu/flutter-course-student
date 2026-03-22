# Group 10 — Activity 1 (core)

**Branch:** `week3-a1-group-10/dummyjson-carts`

---

## Your API (only yours)

**Endpoint:** `https://dummyjson.com/carts`  
**Tip:** Response includes **`carts`** array (and `total`, `skip`, `limit`).

**Expected JSON:**

| Part | Notes |
|------|--------|
| `carts` | List of cart objects |
| Each cart | Often `id`, `products` (list), `total`, `discountedTotal` |

**Display ideas:**

| Approach | Notes |
|----------|--------|
| Show cart **`id`** + **number of products** (`products.length`) | Simplest |
| Or first product title | Requires nested access |

---

## What everyone must implement (same for all groups)

1. **Fetch** → parse **`carts`** list.
2. **Display** — one line per cart (e.g. `Cart #id — N items`).
3. **Loading** / **Error** / **Empty state**
4. **Provider**
5. **Refresh**
6. **(Optional)** Response time

---

## Steps

1. Branch: `week3-a1-group-10/dummyjson-carts`
2. Nested `products`: use `cart['products'] as List?` and `.length`.
3. Commit, push, PR

---

## Help

- This JSON is **nested** — go slowly; print `jsonDecode` shape if stuck.
