# Week 8 — Prerequisites

Complete these **before** the lecture so Metro and Android builds are not blocked.

## What you should already know

- **Flutter basics** (Weeks 1–3): widgets, `StatelessWidget`, `StatefulWidget`, `pubspec.yaml`, `lib/`.
- **Git** (course workflow): branch, commit, push, PR.
- **Android emulator** running (same as Flutter weeks).

Week 7 (Play Store) and Firebase (Weeks 4–5) are **not required** for this lab.

## Software

| Tool | Check | Notes |
|------|--------|--------|
| **Node.js 22+** | `node -v` | React Native 0.85 template requires Node ≥ 22.11 |
| **npm** | `npm -v` | Comes with Node |
| **JDK 17** | `java -version` | Same as Flutter Android builds |
| **Android SDK** | `flutter doctor` Android OK | Reuse Flutter toolchain |
| **Android emulator** | Device visible in `adb devices` | Start before `npm run android` |

### macOS only (optional iOS lab)

| Tool | Check |
|------|--------|
| **Xcode** | `xcodebuild -version` |
| **CocoaPods** | `pod --version` or `bundle exec pod --version` in `react_native_intro/ios` |

## Accounts

| Item | Why |
|------|-----|
| **GitHub** | Branch `week8`, open PRs |

No Firebase or Play Console account needed this week.

## Prepare for class (student checklist)

- [ ] `git fetch origin && git checkout week8`
- [ ] `cd react_native_intro && npm install`
- [ ] Emulator running
- [ ] `npm start` works (Metro starts without red errors)
- [ ] `npm run android` installs the app once at home (saves lecture time)

## Time expectation

| Phase | Time |
|-------|------|
| Instructor demo + structure | ~90 min |
| Hands-on lab (06) | ~60 min |
| Q&A + Git | ~30 min |

## Next

**01-introduction.md** — what React Native is and why we learn it after Flutter.
