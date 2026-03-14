# Week 2 – Group 3 Task

**Branch to create:** `group-3/test-icon`

---

## Your goal

Add **one new assertion** in the widget test: check that the **check circle icon** is present on the home screen (the app uses `Icons.check_circle_outline`).

---

## Steps

1. Make sure you are on `main` and up to date:
   ```bash
   git checkout main
   git pull origin main
   ```

2. Create and switch to your group branch:
   ```bash
   git checkout -b group-3/test-icon
   ```

3. Open `task_manager_app/test/widget_test.dart`. After the existing `expect(find.text('Welcome to Task Manager'), findsOneWidget);`, add:
   ```dart
   expect(find.byIcon(Icons.check_circle_outline), findsOneWidget);
   ```
   You will need to add `import 'package:flutter/material.dart';` at the top if it is not already there.

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
   git commit -m "Add test for check circle icon (Group 3)"
   git push -u origin group-3/test-icon
   ```

6. On GitHub, open a **Pull Request** from `group-3/test-icon` to `main`. Watch the **Actions** tab until CI finishes.

---

## Done when

- Your PR is open and CI has run (and passed, if nothing else is broken).
- You can explain what `find.byIcon` does and why the test passes.
