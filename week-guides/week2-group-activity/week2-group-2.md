# Week 2 – Group 2 Task

**Branch to create:** `group-2/subtitle-text`

---

## Your goal

Change the **subtitle** on the home screen (the line that says “Week 2 – Your first Flutter app”) to something of your choice (e.g. “Week 2 – Group 2”).

---

## Steps

1. Make sure you are on `main` and up to date:
   ```bash
   git checkout main
   git pull origin main
   ```

2. Create and switch to your group branch:
   ```bash
   git checkout -b group-2/subtitle-text
   ```

3. Open `task_manager_app/lib/home_page.dart`. Find the line with `'Week 2 – Your first Flutter app'` and change it to your new subtitle.

4. Run the app to check:
   ```bash
   cd task_manager_app
   flutter pub get
   flutter run
   ```

5. Run tests. If the test checks for this exact text, update `test/widget_test.dart` to expect your new subtitle, or keep the subtitle as “Week 2 – Your first Flutter app” and only change it slightly (e.g. add “ – Group 2”):
   ```bash
   flutter test
   ```

6. Commit and push:
   ```bash
   cd ..
   git add task_manager_app/lib/home_page.dart
   git commit -m "Change subtitle (Group 2)"
   git push -u origin group-2/subtitle-text
   ```

7. On GitHub, open a **Pull Request** from `group-2/subtitle-text` to `main`. Watch the **Actions** tab until CI finishes.

---

## Done when

- Your PR is open and CI has run.
- You can explain what you changed and what the CI did.
