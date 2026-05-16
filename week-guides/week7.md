# Week 7 — Publish to Google Play (Android)

**Branch:** `week7`  
**Lab app:** `tap_rush_game/` (mini game — no Firebase required)  
**Main course app (optional):** `task_manager_app/` — same publishing steps apply

## Learning goals

By the end of this week students can:

1. Explain the difference between **debug**, **release**, **APK**, and **AAB (App Bundle)**.
2. Set a unique **application ID** and **version** for store submission.
3. Create an **upload keystore** and wire **release signing** (without committing secrets).
4. Build a **signed App Bundle** with Flutter.
5. Walk through **Google Play Console**: app creation, testing track, store listing, and **submit for review**.

## Document map (read in order)

| # | File | Topic |
|---|------|--------|
| 00 | [00-prerequisites.md](week7/00-prerequisites.md) | Accounts, tools, what to prepare |
| 01 | [01-introduction.md](week7/01-introduction.md) | Publishing overview |
| 02 | [02-app-identity-and-versioning.md](week7/02-app-identity-and-versioning.md) | applicationId, versionCode, branding |
| 03 | [03-release-signing.md](week7/03-release-signing.md) | Keystore, key.properties, Gradle |
| 04 | [04-build-release-artifacts.md](week7/04-build-release-artifacts.md) | `flutter build appbundle` / APK |
| 05 | [05-play-console-setup.md](week7/05-play-console-setup.md) | Developer account, app, tracks |
| 06 | [06-store-listing-and-submission.md](week7/06-store-listing-and-submission.md) | Listing, policy, release |
| 07 | [07-group-activity.md](week7/07-group-activity.md) | Class exercise + branches |
| 08 | [08-common-errors.md](week7/08-common-errors.md) | Troubleshooting |
| 09 | [09-instructor-session-guide.md](week7/09-instructor-session-guide.md) | 2–3 hour lecture plan |
| 10 | [10-branching-and-repo.md](week7/10-branching-and-repo.md) | Branches, PRs, CI |

## Check out this week

From the **repository root**:

```bash
git fetch origin
git checkout week7
cd tap_rush_game
flutter pub get
flutter run
```

## Instructor note

- **Internal testing** track is enough for a first successful upload; production review can take days.
- Each student must use a **unique application ID**; two uploads cannot share the same ID.
- Never collect keystore passwords on shared documents — students keep keys locally.
