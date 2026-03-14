# Week 2 – Group 4 Task

**Branch to create:** `group-4/test-week2-text`

---

## Your goal

Add **one new assertion** in the widget test: check that the text **“Week 2”** appears somewhere on the home screen (the subtitle contains it).

---

## Steps

1. Make sure you are on `main` and up to date:
   ```bash
   git checkout main
   git pull origin main
   ```

2. Create and switch to your group branch:
   ```bash
   git checkout -b group-4/test-week2-text
   ```

3. Open `task_manager_app/test/widget_test.dart`. After the existing expectations, add:
   ```dart
   expect(find.textContaining('Week 2'), findsOneWidget);
   ```
   `find.textContaining('Week 2')` finds any widget whose text contains “Week 2”.

4. Run tests:
   ```bash
   cd task_manager_app
   flutter pub get
   flutter test
   ```

5. Commit and push:
   ```bash
   cd ..
   git add task_manager_app/test/widget_test.dart
   git commit -m "Add test for Week 2 text (Group 4)"
   git push -u origin group-4/test-week2-text
   ```

6. On GitHub, open a **Pull Request** from `group-4/test-week2-text` to `main`. Watch the **Actions** tab until CI finishes.

---

## Done when

- Your PR is open and CI has run (and passed).
- You can explain the difference between `find.text(...)` and `find.textContaining(...)`.
