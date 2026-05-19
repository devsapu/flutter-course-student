# Week 7 — Prerequisites

Complete these **before** the lecture so you are not blocked on accounts or tooling.

## Accounts

| Item | Why |
|------|-----|
| **Google account** | Sign in to [Google Play Console](https://play.google.com/console). |
| **Play Console developer registration** | One-time fee (check current price on Google’s site). *Instructors may use org account or demo for class.* |
| **GitHub** (course repo) | Branch `week7`, open PRs as in earlier weeks. |

## Software

| Tool | Check |
|------|--------|
| **Flutter SDK** | `flutter doctor` — Android toolchain OK |
| **Android SDK** | Installed via Android Studio or `cmdline-tools` |
| **JDK 17** | Required by current Flutter Android Gradle |
| **Git** | `git --version` |

## Hardware / emulator

- **Physical Android device** recommended for installing a release APK once.
- Emulator is fine for **debug**; release testing on a real device is clearer.

## What you should already know (Weeks 1–6)

- Run `flutter run`, `flutter test`, basic project layout (`lib/`, `android/`).
- Git: branch, commit, push, PR (**CONTRIBUTING.md**).
- Optional: Firebase from Week 4–5 — **not required** for `tap_rush_game`.

## Prepare for the lab (student checklist)

- [ ] Clone/pull latest course repo.
- [ ] `git checkout week7`
- [ ] `cd tap_rush_game && flutter pub get && flutter run` works.
- [ ] Decide your **unique application ID** (e.g. `com.icet2026.janith.taprush`) — see **02-app-identity-and-versioning.md**.
- [ ] Have a **512×512 PNG** app icon ready (or use Flutter default for internal testing only).
- [ ] Read Play Console **Developer Program Policies** summary (instructor will link in class).

## Security (non-negotiable)

Do **not** commit:

- `android/key.properties`
- `*.jks` / `*.keystore`
- Play Console service account JSON (advanced)

The repo `.gitignore` already excludes these for `tap_rush_game`.

## Next

**01-introduction.md** — what “publishing” means in one lecture.
