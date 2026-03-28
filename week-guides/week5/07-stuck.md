# Week 5 — If You’re Stuck

If your group’s merge or your local edits no longer run, use the **instructor reference** branch for comparison (file names, method order, `main.dart` wiring).

## Rescue commands

```bash
git fetch origin
git checkout week5-solution-fcm
cd task_manager_app
flutter pub get
flutter run
```

### If `week5-solution-fcm` does not exist yet

- Compare against **`week5`** on the remote, or ask your instructor for the reference branch name.
- You can also **`git diff week5`** against your branch to see what changed.

## What to compare (quick checklist)

- **`pubspec.yaml`** — `firebase_messaging`, `permission_handler`, `firebase_core`.
- **`android/app/src/main/AndroidManifest.xml`** — `POST_NOTIFICATIONS`.
- **`lib/services/notification_service.dart`** — `initialize` → `requestPermission` → `getToken` → `setupListeners`.
- **`lib/main.dart`** — `NotificationService.instance.initialize()` **after** `Firebase.initializeApp`.

## After you recover

1. Note **one** thing that was wrong (token, permission, manifest, or project mismatch).
2. Re-apply your group’s changes **in small commits** so the next fix is easier.

## Next step

Return to **05-testing.md** and run the **Firebase Console** test again from a clean **`flutter run`**.
