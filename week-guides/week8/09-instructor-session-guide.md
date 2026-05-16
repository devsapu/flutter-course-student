# Week 8 — Instructor session guide (React Native intro)

**Duration:** 3 hours (demo + lab)  
**Branch:** `week8` (students), optional `week8-solution-intro` (reference)  
**Lab app:** `react_native_intro/`

## Before class

- [ ] Push `week8` branch to `origin`.
- [ ] Verify on instructor machine: `cd react_native_intro && npm install && npm run android`.
- [ ] Android emulator image ready (API 34+ same as Flutter weeks).
- [ ] Slide: Flutter vs RN table (from **07**).
- [ ] Confirm classroom Wi‑Fi can download npm packages OR pre-run `npm install` on lab machines.
- [ ] Students completed **00-prerequisites** (Node 22+, `week8` checked out).

## Agenda (3 hours)

| Time | Topic | Doc / action |
|------|--------|----------------|
| 0:00–0:15 | Why RN after Flutter; course roadmap | 01 |
| 0:15–0:35 | Node, Metro, `npm run android` | 02 |
| 0:35–1:00 | File structure tour (IDE + repo) | 03, 05 |
| 1:00–1:25 | JSX, props, StyleSheet — live code `StudentBadge` | 04 |
| 1:25–2:20 | Student lab | 06 — circulate |
| 2:20–2:40 | `useState` demo — `CounterDemo` | 05 §6, 07 |
| 2:40–2:55 | Common errors + Q&A | 08 |
| 2:55–3:00 | Git: `week8/student-...` → PR | 10 |

## Live demo script (recommended)

1. `git checkout week8` → open `react_native_intro` in IDE.
2. Show `index.js` → `App.tsx` → `HomeScreen.tsx` (2 min).
3. Open `WelcomeHeader.tsx` — explain props (3 min).
4. Terminal 1: `npm start`. Terminal 2: `npm run android`.
5. Change header title → save → **Fast Refresh** (1 min).
6. Live-create `StudentBadge.tsx` together (10 min) — same spec as lab 06.
7. Show `CounterDemo` taps (5 min).
8. Mention `android/` exists but Flutter students should not fear it — same role as Flutter `android/`.

## What not to do in 3 hours

- Do not run `npx react-native init` in class (too slow) — app is pre-scaffolded.
- Do not teach React Navigation unless time remains.
- Do not require iOS unless all students have Macs.

## Branching strategy

See **10-branching-and-repo.md**. Emphasize:

- Course branch: **`week8`**
- Student branches: `week8/student-<id>-intro`
- PR into **`week8`**, not `main`
- Never commit `node_modules/`

## Assessment rubric (suggested)

| Criterion | Points |
|-----------|--------|
| App runs on Android (screenshot) | 25 |
| New `StudentBadge` component with props | 35 |
| Used on `HomeScreen` | 20 |
| Personalized `WelcomeHeader` or lab card | 10 |
| Clean PR (no node_modules, clear description) | 10 |

## Pitfalls in room

- Node 18 installed → RN 0.85 may warn/fail — upgrade to Node 22.
- Forgot Metro → white/red screen — start `npm start`.
- Students edit wrong folder (`task_manager_app`) — point to `react_native_intro/`.
- First Gradle build exceeds break time — ask students to pre-build at home (00 checklist).

## Homework (optional)

- Add `Alert` on footer button (lab Task C).
- Read [React Native docs — Core Components](https://reactnative.dev/docs/components-and-apis).
- Skim React Navigation “Getting started” for Week 9+ if planned.

## Materials in repo

- `week-guides/week8/*.md`
- `react_native_intro/README.md`
- `week-guides/week8.md` — student entry

## After Week 8

- Merge student PRs into `week8`.
- Tag or branch `week8-final` / continue to capstone per your syllabus.
- Keep Flutter `task_manager_app` as primary course app; RN is exposure week.
