# Week 2 – Group 6 Task

**Branch to create:** `group-6/test-two-texts`

---

## Your goal

Add **two new assertions** in the widget test: check that there are **at least two** `Text` widgets on the screen (the home page has several text widgets).

---

## Steps

1. Make sure you are on `main` and up to date:
   ```bash
   git checkout main
   git pull origin main
   ```

2. Create and switch to your group branch:
   ```bash
   git checkout -b group-6/test-two-texts
   ```

3. Open `task_manager_app/test/widget_test.dart`. Add an assertion that finds all widgets of type `Text` and checks there are at least 2:
   ```dart
   expect(find.byType(Text), findsAtLeastNWidgets(2));
   ```
   Add `import 'package:flutter/material.dart';` at the top if needed.

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
   git commit -m "Add test for multiple Text widgets (Group 6)"
   git push -u origin group-6/test-two-texts
   ```

6. On GitHub, open a **Pull Request** from `group-6/test-two-texts` to `main`. Watch the **Actions** tab until CI finishes.

---

## Done when

- Your PR is open and CI has run (and passed).
- You can explain what `find.byType(Text)` and `findsAtLeastNWidgets(2)` do.
