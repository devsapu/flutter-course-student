# Week 5 — Implementation (NotificationService)

This document describes the **reference** behavior on the **`week5`** branch. Your code may differ slightly, but the **ideas** should match.

## File location

- **`lib/services/notification_service.dart`**

## Why a service class?

FCM setup involves **async** calls, **permissions**, and **streams**. Putting that in **`main.dart`** quickly becomes hard to read. A dedicated class keeps **`main()`** short and makes **unit testing** and **group work** easier.

## Why a singleton (`instance`)?

**`FirebaseMessaging.instance`** is already a single SDK entry point. Wrapping it in **`NotificationService.instance`** ensures:

- **One** permission flow and **one** set of listeners (no duplicate `listen` calls).
- **Predictable** startup order: **`initialize()`** runs once after Firebase Core.

The pattern used in the repo:

```dart
NotificationService._();
static final NotificationService instance = NotificationService._();
```

The **private constructor** (`._()`) stops other code from doing `NotificationService()` and accidentally creating a second service.

## Method reference

### `Future<void> initialize()`

- Calls, in order: **`requestPermission()`** → **`getToken()`** → **`setupListeners()`**.
- Invoked from **`main.dart`** **after** **`await Firebase.initializeApp(...)`**.

### `Future<void> requestPermission()`

| Platform | What happens |
|----------|----------------|
| **Web** | `FirebaseMessaging.requestPermission` (browser prompt). |
| **Android** | `Permission.notification.request()` (**Android 13+** system dialog when needed). |
| **iOS / macOS** | `FirebaseMessaging.requestPermission` (alert / badge / sound). |
| **Other** | Logs that the prompt was skipped. |

Debug logs include **`[FCM]`** lines with status (e.g. **`authorizationStatus`**, **`Android notification permission: …`**).

### `Future<void> getToken()`

- Calls **`FirebaseMessaging.instance.getToken()`**.
- On success, logs:

  ```text
  [FCM TOKEN]: <long string>
  ```

- On failure, logs **`[FCM TOKEN] error:`** and a stack trace (debug only).

### `void setupListeners()`

- **`FirebaseMessaging.onMessage.listen(...)`** — **foreground** messages only. Reads **`message.notification?.title`** and **`body`**, then logs:

  ```text
  [FCM MESSAGE]: <title> - <body>
  ```

  If the payload has no notification block, you may see **`(no title)`** / **`(no body)`**—data-only messages are a **later** topic.

- **`onTokenRefresh.listen`** — logs the new token with the same **`[FCM TOKEN]:`** prefix when FCM rotates the token.

## `main.dart` wiring (do not change auth)

The reference branch adds **only** this, after Firebase init:

```dart
import 'services/notification_service.dart';

// inside main(), after Firebase.initializeApp:
await NotificationService.instance.initialize();
```

**`TaskManagerApp`**, **`AuthWrapper`**, **`LoginScreen`**, and **`HomePage`** are unchanged for FCM.

## ✅ Expected result

- Cold start: permission flow where applicable, then **`[FCM TOKEN]: …`** in the console.
- Foreground test send: **`[FCM MESSAGE]: …`** appears when a notification payload is received.

## Next document

**05-testing.md** — send a message from the Firebase Console.
