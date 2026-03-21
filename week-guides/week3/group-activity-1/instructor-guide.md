# Group activity 1 — Instructor guide (guided learning)

---

## Timing

- **Total:** ~45–60 minutes (adjust to your class).
- **Setup:** 5 min — explain branch + PR + CI if you use them.
- **Work:** 30–40 min — groups work in parallel.
- **Wrap-up:** 10 min — 1–2 groups demo, quick Q&A.

---

## How to divide groups

- Use **10 groups** if you have enough students; pair students if needed (2 per group).
- Assign **one file per group:** `group-1.md` … `group-10.md`.
- Each group uses a **different branch name** (see each file) so pushes don’t clash.

---

## Expected outcomes

Each group should:

1. Stay on **`main`** (or the branch your course uses), pull latest, create their **feature branch**.
2. Complete **their** small task (API, UI, provider, etc.).
3. Run **`flutter test`** if the task touches code that has tests.
4. Open a **Pull Request** to the target branch your course uses (e.g. `week-3` or `main`).
5. See **CI** run (if configured).

---

## Tips

- Walk the room: **http** + **provider** in `pubspec.yaml` are often forgotten.
- Common blockers: wrong URL, no `await`, forgetting `notifyListeners()`, typo in JSON keys.
- Celebrate **errors** — reading stack traces is part of the lesson.

---

## Order of difficulty (rough)

Groups 1–4 focus on **fetch + UI basics**. Groups 5–6 introduce **Provider**. Groups 7–10 add **navigation**, **polish**, **forms**, **validation**.
