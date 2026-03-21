# Group 10 — Validation

**Branch:** `week3-group-10/validation`

---

## Goal

Add a simple **form** (e.g. “Add note” **`TextFormField`**) with **validation** — empty text not allowed; show **error text** under the field.

---

## Steps

1. Branch: `week3-group-10/validation`
2. Use **`GlobalKey<FormState>`** and **`TextFormField`**
3. **`validator:`** return error string if invalid; **`null`** if OK
4. On **Submit** button, **`if (formKey.currentState!.validate()) { ... }`**
5. For demo, **`SnackBar`** on success is enough (no real API POST required)
6. Commit, push, PR

---

## Done when

Empty submit shows error; valid text shows success **`SnackBar`**.
