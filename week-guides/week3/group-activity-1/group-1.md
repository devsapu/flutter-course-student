# Group 1 — API fetch

**Branch:** `week3-group-1/api-fetch`

---

## Goal

Add the **`http`** package and fetch **JSON** from a public API (see `resources/public-apis.md`). Print the raw response length or first line in the **debug console** to prove it works.

---

## Steps

1. On **`main`**, pull latest: `git pull origin main`
2. Create branch: `git checkout -b week3-group-1/api-fetch`
3. Add `http: ^1.2.0` to `pubspec.yaml`, run `flutter pub get`
4. In a new file or your home screen, call `http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos?_limit=3'))` inside an **`async`** method
5. Use **`await`** and `debugPrint` part of `response.body`
6. Trigger the fetch from a **button** tap so you don’t block `main()`
7. Commit, push, open a **PR** to the branch your instructor names (e.g. **`week-3`** or **`main`**)

---

## Done when

You see JSON-related text in the **Run** / **Debug Console** after tapping the button.
