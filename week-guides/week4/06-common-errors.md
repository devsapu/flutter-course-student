# Week 4 — Common Errors & Fixes

Use this as a **troubleshooting** sheet during the lab. Ask your instructor if something is not listed here.

## Flutter / Dart

| Symptom | Likely cause | What to try |
|--------|----------------|-------------|
| `Target of URI doesn't exist: 'package:firebase_auth/...'` | Dependency not added or `pub get` not run | Run `flutter pub get`; check `pubspec.yaml`. |
| `FirebaseException` / “No Firebase App” | `Firebase.initializeApp` not called or called too late | Ensure `WidgetsFlutterBinding.ensureInitialized()` then `await Firebase.initializeApp(...)` **before** `runApp`. |

## Android build

| Symptom | Likely cause | What to try |
|--------|----------------|-------------|
| Build fails mentioning **google-services** | Plugin not applied or wrong path | Confirm `google-services.json` is under `android/app/` and Gradle plugin is applied (lecture checklist). |
| **Package name mismatch** | Firebase Android app package ≠ `applicationId` | Re-download `google-services.json` after fixing the ID in Firebase **or** in Gradle. |

## iOS build (if used)

| Symptom | Likely cause | What to try |
|--------|----------------|-------------|
| Missing `GoogleService-Info.plist` | File not added to **Runner** target | Add plist in Xcode with target membership checked. |
| Bundle ID mismatch | Firebase iOS app ≠ Xcode bundle ID | Align IDs in Firebase console and Xcode. |

## Firebase Authentication

| Symptom | Likely cause | What to try |
|--------|----------------|-------------|
| `operation-not-allowed` | Email/Password not enabled | Firebase Console → Authentication → Sign-in method → enable **Email/Password**. |
| `user-not-found` / `wrong-password` | Bad credentials or user not created | Create user in console or register flow; double-check spelling. |
| `invalid-email` | Malformed email | Trim spaces; validate before calling Firebase. |
| `network-request-failed` | No internet / emulator DNS | Check connectivity; cold boot emulator. |

## UI / logic

| Symptom | Likely cause | What to try |
|--------|----------------|-------------|
| Stays on login after “success” | No listener for auth state; only `Navigator.push` | Prefer `StreamBuilder` on `authStateChanges()` (see **05-auth-state-handling.md**). |
| `setState()` after dispose | Async gap after `await` | Check `if (!mounted) return;` before `setState`. |

## Partial debug snippet (temporary)

```dart
// TODO: Remove before assignment submission — only for local debugging
// debugPrint('Auth user: ${FirebaseAuth.instance.currentUser?.email}');
```

## When you are stuck

1. Read the **full** error message (scroll in the Run console).
2. Run `flutter doctor -v` and fix anything marked **✗** for your target platform.
3. Compare your project to the instructor’s screen **file by file** (Gradle, `main.dart`, `google-services.json` presence).

## Related reading

- **auth-flow-explained.md** — conceptual picture of login and tokens.
- **03-firebase-setup.md** — setup order.
