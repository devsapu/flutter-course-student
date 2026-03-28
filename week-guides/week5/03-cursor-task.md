# Week 5 — Cursor / Group Activity: FCM (Three Teams)

This activity matches the **modular** design of **`NotificationService`** in the **`week5`** branch. Your instructor may assign **one** part per sub-team; together the app should request permission, log a token, and print **foreground** messages.

## Constraints (everyone)

- **Do not** change **authentication** (`AuthWrapper`, `LoginScreen`, `FirebaseAuth` flow).
- **Do not** break **`main.dart`** order: **`Firebase.initializeApp`** must run **before** FCM.
- **Foreground only** this week—no background handler, no custom notification UI required.
- Prefer **logging** (`debugPrint`) over new screens unless the instructor asks otherwise.

## Team roles

### Setup team

- Add **`firebase_messaging`** and **`permission_handler`** to **`pubspec.yaml`**.
- Add **`POST_NOTIFICATIONS`** to **`AndroidManifest.xml`**.
- Run **`flutter pub get`** and fix any merge issues with **`pubspec.lock`**.

### Device team

- Implement or verify **`getToken()`** (or equivalent) so the console shows:

  ```text
  [FCM TOKEN]: …
  ```

- Optionally handle **token refresh** (`onTokenRefresh`)—the reference app logs refreshed tokens the same way.

### Listener team

- Implement or verify **`setupListeners()`** using **`FirebaseMessaging.onMessage.listen`**.
- Log **title** and **body** in a single line, e.g.:

  ```text
  [FCM MESSAGE]: Your title - Your body
  ```

## Integration checklist

- [ ] **`NotificationService`** lives under **`lib/services/notification_service.dart`** (or agreed path).
- [ ] **`initialize()`** calls **`requestPermission()`**, then **`getToken()`**, then **`setupListeners()`** in order.
- [ ] **`main.dart`** calls **`await NotificationService.instance.initialize()`** **after** **`Firebase.initializeApp`** and **before** **`runApp`**.

## 💡 Important notes

- Use **`NotificationService.instance`** (singleton) so **one** FCM setup is shared app-wide.
- **`kDebugMode`** guards logs in the reference implementation—release builds stay quieter.

## ✅ Expected result

With all parts merged: app starts, permission flow runs where required, **token** appears in the **Run** console, and a **test message** from Firebase (app **foreground**) prints **`[FCM MESSAGE]: …`**. See **05-testing.md**.

## Next document

**04-implementation.md** — what each method does and why.
