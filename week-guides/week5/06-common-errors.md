# Week 5 — Common Errors & Fixes (FCM)

Use this during the lab. Symptoms refer to the **`week5`** reference implementation (`NotificationService`, `[FCM TOKEN]`, `[FCM MESSAGE]`).

## No token printed (`[FCM TOKEN]` missing or null)

| Likely cause | What to try |
|--------------|-------------|
| Firebase not initialized before FCM | In **`main.dart`**, ensure **`Firebase.initializeApp`** completes **before** **`NotificationService.instance.initialize()`**. |
| Wrong or missing **`google-services.json`** / **`firebase_options.dart`** | Re-run **`flutterfire configure`** for the correct project; see Week 4 guides. |
| iOS simulator / device without push setup | Test on **Android** first; iOS may need capabilities + APNs. |
| `getToken()` error | Read **`[FCM TOKEN] error:`** in the console; often project mismatch or network. |

## Notification not received (no `[FCM MESSAGE]`)

| Likely cause | What to try |
|--------------|-------------|
| App **not in foreground** | This week only **`onMessage`** is wired. Put the app **open** on screen, then send again. |
| **Data-only** payload | If the message has **no** `notification` block, title/body may show **`(no title)`** / **`(no body)`**—use a **Notification** test in the console. |
| Wrong **FCM token** | Copy the latest **`[FCM TOKEN]:`** line; old or truncated tokens fail silently or error server-side. |
| **Cloud Messaging API** / project issues | In Google Cloud Console for the same project, confirm FCM-related APIs are enabled (Firebase usually handles this). |

## Permission not granted

| Likely cause | What to try |
|--------------|-------------|
| **Android 13+** without **`POST_NOTIFICATIONS`** in manifest | Add **`<uses-permission android:name="android.permission.POST_NOTIFICATIONS"/>`** to **`AndroidManifest.xml`**. |
| User tapped **Deny** | Open **system Settings → Apps → your app → Notifications** and enable; or reinstall and accept. |
| **`permission_handler`** not called on Android | Ensure **`requestPermission()`** uses **`Permission.notification.request()`** on Android (as in the reference **`NotificationService`**). |

## Wrong Firebase project

| Symptom | What to try |
|---------|-------------|
| Auth works but FCM token fails or messages never arrive | **`google-services.json`** and **`firebase_options.dart`** must be from the **same** project you use in the **Firebase Console** to send tests. |
| Multiple Firebase apps (Android) | Package name **`applicationId`** must match the app entry in Firebase (**Week 4** checklist). |

## App not in foreground

| Symptom | What to try |
|---------|-------------|
| Message arrives as a **system tray** notification but **no** `[FCM MESSAGE]` log | Expected: **background** delivery does not go through **`onMessage`** the same way. This week focuses on **foreground** logging only. |
| Want logs when app is background | **Advanced** — requires background handlers / local notifications; out of scope for **`week5`** reference. |

## General Flutter build issues

- Run **`flutter clean`** then **`flutter pub get`** after changing **`pubspec.yaml`** or native config.
- Run **`flutter doctor -v`** and fix **✗** items for your target platform.

## 🔐 Security note

Never commit **production** **`google-services.json`**, **`GoogleService-Info.plist`**, or real **`firebase_options.dart`** to a **public** GitHub repo. Use **private** repositories or **course-only** Firebase projects as directed.

## Related reading

- **02-setup.md** — dependencies and manifest.
- **05-testing.md** — console test flow.
- **07-stuck.md** — reference branch checkout.
