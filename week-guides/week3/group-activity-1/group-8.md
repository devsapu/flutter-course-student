# Group 8 — Activity 1 (core)

**Branch:** `week3-a1-group-8/publicapis-entries`

---

## Your API (only yours)

**Endpoint:** `https://api.publicapis.org/entries`  
**Tip:** Add query params to limit size, e.g. `?category=animals` or check docs for `https` filter. Example:  
`https://api.publicapis.org/entries?https=true` (large list — still consider handling many rows).

**Expected JSON:**

| Part | Notes |
|------|--------|
| `entries` | List of API metadata objects |
| `count` | Total count (optional) |

**Each entry often has:**

| Field | Type | Notes |
|--------|------|--------|
| `API` | String | Name of the public API |
| `Description` | String | Short text |
| `Category` | String | Optional chip or subtitle |
| `HTTPS` | bool | Optional icon |

---

## What everyone must implement (same for all groups)

1. **Fetch** → parse **`entries`** (not a top-level array).
2. **Display** — at least **API** name + one more field.
3. **Loading** / **Error** / **Empty state**
4. **Provider**
5. **Refresh**
6. **(Optional)** Response time

---

## Steps

1. Branch: `week3-a1-group-8/publicapis-entries`
2. If the list is huge, show first **N** items only (e.g. `take(30)`) for smooth UI.
3. Commit, push, PR

---

## Help

- Field names may use **capital letters** (`API`, `Description`) — match JSON keys exactly in Dart.
