# Week 5 — Overview: Push Notifications (FCM)

Welcome to **Week 5: Firebase Cloud Messaging (FCM)**. In Week 4 you added **Firebase Authentication**. This week you learn how **Firebase** can **push messages** to your app—alerts, reminders, or data updates—using **FCM**.

## What is FCM?

**Firebase Cloud Messaging** is Google’s service that delivers messages from your Firebase project (or a trusted server) to **specific devices** or **groups of devices**. Each installed app gets a **registration token**; Firebase uses that token to know **where** to send the message.

## What you will learn

1. What an **FCM device token** is and why it matters.
2. How to add **`firebase_messaging`** (and supporting packages) to a Flutter app.
3. How to **request notification permission** (especially **Android 13+** and **iOS**).
4. How to **log the token** and **listen for messages while the app is open** (**foreground** only in this week).
5. How to **send a test notification** from the **Firebase Console**.

## Scope of this week (important)

| In scope | Out of scope (later) |
|----------|----------------------|
| Foreground: `FirebaseMessaging.onMessage` | Background / terminated handlers |
| Logging token and message title/body | Local notification UI styling (channels, icons) |
| Test send from Firebase Console | Your own server + FCM HTTP v1 (advanced) |

## How this ties to the course repo

The **`week5`** branch builds on **`week4-solution-auth`**: **Firebase** and **authentication** are already configured. Week 5 adds **`NotificationService`** and wires it from **`main.dart`** **without changing** the login / `AuthWrapper` flow.

## Prerequisites

- Completed **Week 4** concepts (or checked out **`week5`** with Firebase already working).
- A **Firebase project** with the same **`google-services.json`** / **`firebase_options.dart`** you use for Auth.
- **Android emulator or device** (recommended for first tests); iOS may need extra Xcode steps for real devices.

## 🔐 Security note

Do **not** commit real **`google-services.json`**, **`GoogleService-Info.plist`**, or production **`firebase_options.dart`** to a **public** repository unless your course allows it. Use **private** repos or **template** keys for demos. See **02-setup.md** and **06-common-errors.md** for reminders.

## Next document

**02-setup.md** — dependencies, Android permission, and manifest.
