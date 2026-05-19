# Week 8 — Branching strategy and repository layout

Same **week-by-week branch** model as Week 7, with PRs documented in **CONTRIBUTING.md**.

## Course branches (instructor-maintained)

| Branch | Contents |
|--------|----------|
| `main` | Stable course repo; may lag latest week |
| `week7` | Play Store lab + `tap_rush_game` |
| **`week8`** | **Week 8 guides + `react_native_intro/`** |
| `week8-solution-intro` | Optional reference (sample `StudentBadge`, etc.) |
| `week8-final` | Capstone / combined state (if used) |

Students start from **`week8`**:

```bash
git fetch origin
git checkout week8
git pull origin week8
```

## Student branches

Pattern:

```text
week8/student-<identifier>-intro
```

Examples:

- `week8/student-nimal-intro`
- `week8/group-4-intro`

## Pull request target

| Your work | Open PR into |
|-----------|----------------|
| Week 8 lab (components, RN app) | `week8` |
| Guide typo fix | `week8` or `main` (ask instructor) |

PR checklist:

- [ ] `npm test` passes in `react_native_intro/` (smoke test)
- [ ] App runs on Android (screenshot in PR)
- [ ] No `node_modules/` in diff
- [ ] Lists new/changed files under `src/components/` or `src/screens/`

## Repository layout (Week 8)

```text
flutter-course-student/
├── task_manager_app/       # Flutter course app (weeks 1–6+)
├── tap_rush_game/          # Week 7 publish lab
├── react_native_intro/     # Week 8 RN lab  ← NEW
│   ├── App.tsx
│   ├── src/screens/
│   ├── src/components/
│   ├── android/
│   ├── ios/
│   └── package.json
└── week-guides/
    ├── week8.md            # Week 8 entry point
    └── week8/
        ├── 00-prerequisites.md
        ├── …
        └── 10-branching-and-repo.md
```

## Relation to Flutter weeks

| Week | Focus | Main folder |
|------|--------|-------------|
| 1–6 | Flutter | `task_manager_app/` |
| 7 | Play Store | `tap_rush_game/` |
| **8** | **React Native intro** | **`react_native_intro/`** |

Students do **not** need to merge Flutter and RN into one app this week.

## CI note

If GitHub Actions is extended for `week8`:

```yaml
# Example jobs (instructor adds when ready)
working-directory: react_native_intro
run: npm ci && npm test
```

Do not run `npm run android` on default GitHub runners without emulator setup.

## Compare solution branch (optional)

```bash
git fetch origin
git checkout week8-solution-intro
```

Use for troubleshooting — students still submit their own `StudentBadge` design.
