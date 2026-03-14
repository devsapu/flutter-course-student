# Week 2 – Group 5 Task

**Branch to create:** `group-5/appbar-title`

---

## Your goal

Change the **app bar title** from “Task Manager” to “Task Manager – Group 5” (or another title of your choice).

---

## Steps

1. Make sure you are on `main` and up to date:
   ```bash
   git checkout main
   git pull origin main
   ```

2. Create and switch to your group branch:
   ```bash
   git checkout -b group-5/appbar-title
   ```

3. Open `task_manager_app/lib/home_page.dart`. Find the `AppBar` and change the `title` from `const Text('Task Manager')` to your new title (e.g. `const Text('Task Manager – Group 5')`).

4. Run the app to check:
   ```bash
   cd task_manager_app
   flutter pub get
   flutter run
   ```

5. Run tests. The current test expects `find.text('Task Manager')`. Update `test/widget_test.dart` to expect your new app bar text (e.g. `find.text('Task Manager – Group 5')`).
   ```bash
   flutter test
   ```

6. Commit and push (include both files if you changed the test):
   ```bash
   cd ..
   git add task_manager_app/lib/home_page.dart task_manager_app/test/widget_test.dart
   git commit -m "Change app bar title (Group 5)"
   git push -u origin group-5/appbar-title
   ```

7. On GitHub, open a **Pull Request** from `group-5/appbar-title` to `main`. Watch the **Actions** tab until CI finishes.

---

## Done when

- Your PR is open and CI has run (and passed).
- You can explain why you had to update both the app and the test.
