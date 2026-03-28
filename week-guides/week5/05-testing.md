# Week 5 — Testing (End-to-End FCM)

Follow these steps to confirm **foreground** notifications and logging. You need a **real** Firebase project wired to your app (same as Week 4).

## Before you start

- App builds from **`task_manager_app`** on **`week5`** (or your merged group branch).
- You are signed in if your instructor still requires auth to reach the home screen (FCM runs at startup regardless, but you should test in a **normal** session).

## Step 1 — Run the app

```bash
cd task_manager_app
flutter run -d <android-emulator-or-device>
```

Accept the **notification** permission if Android or iOS prompts you.

## Step 2 — Copy the FCM token

In the **Run** / **Debug Console**, find a line like:

```text
[FCM TOKEN]: eA9b...very-long-string...xYz
```

Select and **copy** the entire token (no spaces or quotes).

> **Important notes**
>
> - If you **hot restart**, the token is usually the same; if you **reinstall** the app, it may change—copy again.
> - Tokens are **sensitive** (tie to your project). Do not paste them in **public** chats or commit them to git.

## Step 3 — Open Firebase Messaging

1. Go to [Firebase Console](https://console.firebase.google.com).
2. Open the **same project** as your **`google-services.json`** / **`firebase_options.dart`**.
3. Left menu: **Messaging** (sometimes under **Engage**).
4. Start **New campaign** → **Firebase Notifications** (wording may vary).
5. Enter a **notification title** and **notification text** (these map to what you log as title and body).

## Step 4 — Send a test message

1. Use **Send test message** (or the test step in the composer).
2. Paste the **FCM registration token** from Step 2.
3. Send.

## Step 5 — Verify in the console (foreground)

1. Keep the app **open and in the foreground** (this week’s listener is **`onMessage` only**).
2. You should see a log similar to:

   ```text
   [FCM MESSAGE]: <your title> - <your body>
   ```

## ✅ Expected result

| Step | Success signal |
|------|----------------|
| Run | Permission handled; **`[FCM TOKEN]:`** appears |
| Test send | **`[FCM MESSAGE]:`** appears **while app is open** |

If nothing appears, use **06-common-errors.md**.

## Next document

**06-common-errors.md** — troubleshooting.
