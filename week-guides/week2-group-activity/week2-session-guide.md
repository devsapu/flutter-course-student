# Week 2 – Session Guide (1.5 hours, 8 groups)

**Use this file to run the hands-on part of Week 2.**  
Give each group the corresponding task file: **week2-group-1.md** through **week2-group-8.md**.

---

## Aim

Students practice the full flow: **branch → change code → commit → push → open PR → see CI run.**

---

## Before the session

- [ ] Repo is on branch `main` and pushed (students will clone or pull).
- [ ] Each group has (or will have) access to the same GitHub repo (e.g. fork, or one repo with branch-based tasks).
- [ ] Share the repo URL and confirm everyone has Flutter installed (`flutter doctor`).

---

## Session outline (~1.5 hours)

| Time   | What happens |
|--------|----------------|
| **0:00** | Brief recap: Git workflow, PRs, CI (use **CICD_FOR_STUDENTS.md** if needed). |
| **0:05** | Assign groups: Group 1 → **week2-group-1.md**, Group 2 → **week2-group-2.md**, … Group 8 → **week2-group-8.md**. |
| **0:10** | Groups read their task and create their branch (e.g. `group-1/welcome-text`). |
| **0:15–0:50** | Hands-on: each group does its task (edit code/tests, commit, push, open PR). |
| **0:50** | Quick check: each group shows their PR and that CI is running or has passed. |
| **1:00–1:25** | Wrap-up: walk through one PR and the Actions tab; clarify CI vs CD; Q&A. |
| **1:25–1:30** | Optional: merge one or two PRs live to show the full flow. |

---

## Group–file mapping

| Group   | Task file           | Focus (short)        |
|---------|----------------------|------------------------|
| Group 1 | week2-group-1.md    | Change welcome message text |
| Group 2 | week2-group-2.md    | Change subtitle text |
| Group 3 | week2-group-3.md    | Add test: find icon  |
| Group 4 | week2-group-4.md    | Add test: find “Week 2” text |
| Group 5 | week2-group-5.md    | Change app bar title |
| Group 6 | week2-group-6.md    | Add test: two text widgets |
| Group 7 | week2-group-7.md    | Update README one line |
| Group 8 | week2-group-8.md    | Add test: Scaffold present |

---

## Tips for the instructor

1. **Branch names:** Each task suggests a branch name (e.g. `group-1/welcome-text`). This avoids clashes when all 8 groups push.
2. **One repo vs forks:** If all use the same repo, they need push access and must use different branch names (the task files already do this).
3. **CI:** Remind students to open a **Pull Request** (targeting `main`) so they can see the Actions run.
4. **Stuck groups:** Common issues – wrong branch, forgot `flutter pub get` or `flutter test` before pushing, or PR target branch wrong. Have them check CONTRIBUTING.md.
5. **Time:** If short on time, reduce to 4 groups (e.g. use tasks 1, 2, 3, 4 only) or let two groups share one task file.

---

## After the session

- You can merge the PRs later or leave them open for review.
- Remind students to read **CI_EXPLANATION.md** and **CICD_FOR_STUDENTS.md** for revision.
