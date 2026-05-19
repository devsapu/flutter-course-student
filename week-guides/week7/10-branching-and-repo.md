# Week 7 — Branching strategy and repository layout

This week aligns with the **week-by-week branch** model used since Week 1 and the **feature-branch + PR** workflow in **CONTRIBUTING.md**.

## Course branches (instructor-maintained)

| Branch | Contents |
|--------|----------|
| `main` | Stable course repo; CI; may lag latest week |
| `week-1` … `week-2` | Early UI (see root README) |
| `week3`, `week4`, `week5`, … | Progressive `task_manager_app` features |
| **`week7`** | **Week 7 guides + `tap_rush_game/`** publish lab |
| `week7-solution-publish` | Optional reference (signing comments, sample listing text only) |
| `week8-final` | Capstone / final project state |

Students start work from **`week7`**:

```bash
git fetch origin
git checkout week7
git pull origin week7
```

## Student branches (you create)

Pattern:

```text
week7/student-<identifier>-publish
```

Examples:

- `week7/student-nimal-publish`
- `week7/group-4-publish`

Alternative (if instructor allows generic CONTRIBUTING style):

```text
feature/week7-play-store-nimal
```

**One branch per student/team** for the publish milestone.

## Pull request target

| Your work | Open PR into |
|-----------|----------------|
| Week 7 lab (identity, small UI tweak) | `week7` |
| Documentation fix in guides | `main` or `week7` (ask instructor) |

PR checklist:

- [ ] `flutter analyze` / `flutter test` pass in `tap_rush_game/`
- [ ] No `key.properties`, `.jks`, `.keystore`, `.aab` in diff
- [ ] Description lists **applicationId** + Console screenshot link or image

## Repository layout (Week 7)

```text
flutter-course-student/
├── README.md
├── CONTRIBUTING.md
├── CI_EXPLANATION.md
├── task_manager_app/          # Main course app (weeks 1–6+)
├── tap_rush_game/             # Week 7 publish lab (mini game)
│   ├── lib/main.dart
│   ├── android/app/build.gradle.kts
│   ├── android/key.properties.example
│   └── README.md
└── week-guides/
    ├── week7.md               # Week 7 entry point
    └── week7/
        ├── 00-prerequisites.md
        ├── …
        └── 10-branching-and-repo.md
```

## How this relates to earlier weeks

| Week | Branching pattern |
|------|-------------------|
| Week 2 | `group-N/...` or `feature/...` → PR |
| Week 3 | `week3-a1-group-N/...` |
| Week 4–5 | `week4`, `week5`, solution branches |
| **Week 7** | `week7/student-...-publish` → **`week7`** |

Same rules: **no direct commits to shared teaching branches** without instructor role.

## CI (GitHub Actions)

Existing workflow runs on push/PR to `main`. If CI is extended for `week7`:

- Run `flutter pub get`, `analyze`, `test` inside `tap_rush_game/`
- Do **not** run release signing on CI without encrypted secrets (optional advanced topic)

Students fix red CI the same way as Week 2: read logs, fix locally, push again.

## Secrets hygiene

| OK in git | Never in git |
|-----------|----------------|
| `key.properties.example` | `key.properties` |
| Gradle signing **logic** | Keystore files |
| Docs + screenshots in PR description | Passwords in code comments |

## Optional: publish `task_manager_app` instead

Use branch `week7` but work in `task_manager_app/`:

1. Change `applicationId` in `task_manager_app/android/app/build.gradle.kts`
2. Follow same signing and `flutter build appbundle` steps
3. Play Console forms must mention **Firebase** in Data safety

Keep game and task manager **separate Console apps** (different application IDs).

## Check out solution (compare only)

```bash
git fetch origin
git checkout week7-solution-publish
```

Use for troubleshooting — copy **process**, not another student’s ID or keystore.
