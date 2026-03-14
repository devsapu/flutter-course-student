# Week 2 – Group 1 Task

**Branch to create:** `group-1/welcome-text`

---

## Your goal

Change the **welcome message** on the home screen of the Task Manager app (the text that says “Welcome to Task Manager”) to something of your choice (e.g. “Welcome, Group 1!”).

---

## Steps

1. Make sure you are on `main` and up to date:
   ```bash
   git checkout main
   git pull origin main
   ```

2. Create and switch to your group branch:
   ```bash
   git checkout -b group-1/welcome-text
   ```

3. Open `task_manager_app/lib/home_page.dart`. Find the line with `'Welcome to Task Manager'` and change it to your new text.

4. Run the app to check:
   ```bash
   cd task_manager_app
   flutter pub get
   flutter run
   ```

5. Run tests (they should still pass; the test looks for “Task Manager” in the app bar and your new welcome text might need a test update if you changed it a lot—see note below):
   ```bash
   flutter test
   ```
   If the test fails because it still expects “Welcome to Task Manager”, either change the text back to that or update `test/widget_test.dart` to expect your new text.

6. Commit and push:
   ```bash
   cd ..   # if you were in task_manager_app
   git add task_manager_app/lib/home_page.dart
   git commit -m "Change welcome message (Group 1)"
   git push -u origin group-1/welcome-text
   ```

7. On GitHub, open a **Pull Request** from `group-1/welcome-text` to `main`. Watch the **Actions** tab until CI finishes (green = passed).

---

## Done when

- Your PR is open and CI has run (green or red—both are fine for learning).
- You can explain what branch you used and what the CI did.
