# Week 8 — Introduction to React Native (3-hour session)

**Branch:** `week8`  
**Lab app:** `react_native_intro/` (small demo — no Firebase)  
**Context:** You already know **Flutter**; this week shows how the **same ideas** appear in **React Native** (JavaScript/TypeScript + native UI).

## Learning goals

By the end of this session students can:

1. Explain what **React Native** is and how it compares to **Flutter**.
2. Run a React Native app on **Android** (Metro + `npm run android`).
3. Navigate the **file structure** (`App.tsx`, `src/screens/`, `src/components/`, `android/`).
4. Create a simple **functional component** with **props** and **StyleSheet**.
5. Use **`useState`** for basic interactive UI (counter demo).
6. Use the **`week8`** branch and open a PR with their component change.

## Document map (read in order)

| # | File | Topic |
|---|------|--------|
| 00 | [00-prerequisites.md](week8/00-prerequisites.md) | Node, Android SDK, checklist |
| 01 | [01-introduction.md](week8/01-introduction.md) | Why React Native after Flutter |
| 02 | [02-environment-setup.md](week8/02-environment-setup.md) | Install, verify, first run |
| 03 | [03-project-structure.md](week8/03-project-structure.md) | Folders vs Flutter layout |
| 04 | [04-jsx-and-components.md](week8/04-jsx-and-components.md) | JSX, props, StyleSheet |
| 05 | [05-demo-app-walkthrough.md](week8/05-demo-app-walkthrough.md) | Walk through `react_native_intro` |
| 06 | [06-live-lab.md](week8/06-live-lab.md) | Student exercise (create a component) |
| 07 | [07-flutter-vs-react-native.md](week8/07-flutter-vs-react-native.md) | Concept mapping table |
| 08 | [08-common-errors.md](week8/08-common-errors.md) | Metro, SDK, CocoaPods |
| 09 | [09-instructor-session-guide.md](week8/09-instructor-session-guide.md) | **3-hour** agenda & demo script |
| 10 | [10-branching-and-repo.md](week8/10-branching-and-repo.md) | Branches, PRs |

## Check out this week

From the **repository root**:

```bash
git fetch origin
git checkout week8
cd react_native_intro
npm install
npm start          # terminal 1 — keep running
npm run android    # terminal 2 — after emulator is up
```

## Scope (important)

| In scope (Week 8) | Out of scope (later / optional) |
|-------------------|----------------------------------|
| One screen, several components | React Navigation / multiple routes |
| `useState` counter | Redux, Context API, Riverpod equivalent |
| Android run in class | App Store / Play publish for RN |
| TypeScript props on components | Full backend + REST lab |

## Instructor note

- Reuse students’ **Android emulator** from Flutter weeks.
- **Do not** try to teach both RN and a new backend in the same 3 hours.
- Optional homework: run on iOS or add a second screen with React Navigation.
