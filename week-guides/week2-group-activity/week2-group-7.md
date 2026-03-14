# Week 2 – Group 7 Task

**Branch to create:** `group-7/readme-update`

---

## Your goal

Add **one line** to the main **README.md** at the root of the repository: a short sentence saying “Group 7 completed the Week 2 hands-on task.” (or similar). Add it in a sensible place (e.g. after the first paragraph or in a “Contributors” line).

---

## Steps

1. Make sure you are on `main` and up to date:
   ```bash
   git checkout main
   git pull origin main
   ```

2. Create and switch to your group branch:
   ```bash
   git checkout -b group-7/readme-update
   ```

3. Open **README.md** (in the repo root, not inside `task_manager_app`). Add one line, for example:
   ```markdown
   Group 7 completed the Week 2 hands-on task.
   ```
   Place it where it fits (e.g. after the bullet list of what the repo teaches, or at the end of the first section).

4. Commit and push:
   ```bash
   git add README.md
   git commit -m "docs: add Group 7 completion note (Week 2 task)"
   git push -u origin group-7/readme-update
   ```

5. On GitHub, open a **Pull Request** from `group-7/readme-update` to `main`. Watch the **Actions** tab until CI finishes (the Flutter CI will still run and should pass).

---

## Done when

- Your PR is open and CI has run.
- You can explain why CI still runs even though you only changed README (the workflow runs on every push to the branch and on every PR).
