# Week 5 — Setup (Dependencies & Android permission)

This guide matches the **`week5`** branch of `task_manager_app`. Adjust versions if your instructor uses a newer Flutter/Firebase stack.

## Step 1 — Dependencies

Add to **`pubspec.yaml`**:

| Package | Role in this course |
|---------|---------------------|
| **`firebase_messaging`** | Talks to FCM: token, `onMessage`, permission APIs on Apple/Web. |
| **`permission_handler`** | Requests **runtime** notification permission on **Android 13+ (API 33+)**. |

Example (versions as on **`week5`**):

```yaml
dependencies:
  firebase_messaging: ^16.1.3
  permission_handler: ^12.0.1
```

Also ensure **`firebase_core`** is present (already on the auth branch).

Then:

```bash
cd task_manager_app
flutter pub get
```

### Why `permission_handler` is needed

- **`FirebaseMessaging.requestPermission()`** is designed mainly for **Apple** (and **Web**) to show the permission dialog.
- On **Android 13+**, users must explicitly allow **notifications** via the **`POST_NOTIFICATIONS`** runtime permission. The course uses **`Permission.notification.request()`** from **`permission_handler`** so the system dialog appears on Android.

On **older Android**, notification permission is implicit; the call still returns a status you can log.

## Step 2 — Android manifest

In **`android/app/src/main/AndroidManifest.xml`**, **inside** `<manifest>`, add **before** `<application>`:

```xml
<uses-permission android:name="android.permission.POST_NOTIFICATIONS"/>
```

> **Important:** Without this declaration, Android 13+ may **deny** notification permission even if you call `permission_handler`.

## Step 3 — iOS (optional for Week 5 lab)

- For **real devices**, you may need **Push Notifications** capability and **APNs** setup in Xcode—your instructor will demo if required.
- The **simulator** has limitations for push; **Android emulator** is often easier for the first FCM test.

## Step 4 — Firebase Console

- Use the **same Firebase project** as Week 4 (**same** `google-services.json` / `firebase_options.dart`).
- Ensure **Cloud Messaging** is available (Firebase enables it when you use **Messaging** in the console).

## ✅ Expected result

- `flutter pub get` succeeds.
- `flutter analyze` / `flutter run` builds without missing-plugin errors.
- On **Android 13+**, the first run can show a **notification permission** system dialog (after your code calls `requestPermission()`).

## Next document

**03-cursor-task.md** — group roles and Cursor-friendly task split.
