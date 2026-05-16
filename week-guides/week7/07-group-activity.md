# Week 7 — Group activity: Publish Tap Rush

**Time:** 90–120 minutes (after instructor demo)  
**App:** `tap_rush_game/`  
**Base branch:** `week7`

## Learning outcome

Each student (or pair) produces:

1. A **unique application ID**
2. A **signed** `app-release.aab`
3. An **Internal testing** release on Play Console (screenshot proof)

## Branch naming

From updated `main` or `week7`:

```bash
git checkout week7
git pull origin week7
git checkout -b week7/student-<firstname>-publish
```

Examples:

- `week7/student-amila-publish`
- `week7/student-group3-publish`

**Do not** use another student’s application ID.

## Task breakdown

### Part A — Identity (15 min)

1. Open `tap_rush_game/android/app/build.gradle.kts`.
2. Set `applicationId` and `namespace` to `com.icet2026.<yourname>.taprush` (pattern is example — follow instructor prefix).
3. Set `android:label` in `AndroidManifest.xml` to your game title.
4. Set `pubspec.yaml` `version: 1.0.0+1` (or higher if retrying).

Commit: `Set unique application ID for Play upload`

### Part B — Signing (20 min)

1. Create `upload-keystore.jks` (see **03-release-signing.md**).
2. Create `android/key.properties` from example — **do not commit**.
3. Run `flutter build appbundle --release`.
4. Confirm file exists: `build/app/outputs/bundle/release/app-release.aab`.

Commit: only `key.properties.example` or doc notes — **never** the keystore.

### Part C — Play Console (30–45 min)

1. Create app in Console with **matching** application ID.
2. Complete **App content** forms (rating, data safety, etc.).
3. Upload AAB to **Internal testing**.
4. Add yourself as tester; install from Play (optional but recommended).

### Part D — GitHub (15 min)

1. Optional code tweak: change welcome text in `lib/main.dart` (e.g. include your name).
2. Push branch and open **PR → `week7`** (or `main` per instructor).
3. PR description: application ID + screenshot of Console internal release.

## Optional stretch goals

| # | Task | Branch suffix idea |
|---|------|-------------------|
| 1 | Custom app icon | `...-icon` |
| 2 | Second release `version: 1.0.1+2` | `...-v2` |
| 3 | Publish `task_manager_app` instead | coordinate with instructor |
| 4 | Closed testing with 5 classmates | `...-closed-beta` |

## Group roles (if teams of 3)

| Role | Responsibility |
|------|----------------|
| **Developer** | Gradle ID, build AAB |
| **Release** | Console upload, testers |
| **Docs** | Store listing text, PR, screenshots |

## Instructor verification

| Check | Pass |
|-------|------|
| Unique `applicationId` in PR | |
| No secrets in diff | |
| AAB builds on CI machine (optional) | |
| Console screenshot shows correct package name | |

## Next

**08-common-errors.md** when blocked.
