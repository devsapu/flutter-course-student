# Group 4 — Error handling

**Branch:** `week3-group-4/error-handling`

---

## Goal

Wrap your HTTP call in **`try` / `catch`**. If the request fails, show a **friendly error message** on screen (not only `print`).

---

## Steps

1. Branch: `week3-group-4/error-handling`
2. Use a **wrong URL** temporarily to test the error UI, then fix the URL
3. Store `String? errorMessage` in state; set it in **`catch`**
4. In **`build`**, if `errorMessage != null`, show **`Text`** + **Retry** button that clears error and fetches again
5. Commit, push, PR

---

## Done when

Broken URL shows your message; working URL shows data.
