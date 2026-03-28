# Week 4 — Prerequisites (before Firebase setup)

Complete this checklist **before** you follow **03-firebase-setup.md**.

## Tools and accounts

* **Flutter SDK** installed and working (`flutter doctor`; fix anything marked ✗ for your target platform).
* **Google account** you will use in the Firebase Console and for CLI login.
* **Git** — you can switch branches (`week4` vs `week4-solution-auth`) as described in the setup guide.

## Firebase CLI

1. Install the [Firebase CLI](https://firebase.google.com/docs/cli#install_the_firebase_cli) (e.g. Homebrew `firebase-cli` or `npm install -g firebase-tools`).
2. Run `firebase --version` — it should print a version number.
3. Run `firebase login` and finish the browser sign-in until you see success.

## FlutterFire CLI

1. Run `dart pub global activate flutterfire_cli`.
2. Ensure `flutterfire` is on your `PATH`, for example:

   ```bash
   export PATH="$PATH:$HOME/.pub-cache/bin"
   ```

3. Run `flutterfire --help` to confirm the command is found.

## Course repo

* You have cloned the course repository and can open the **`task_manager_app`** folder in your editor.
* You know which **Git branch** you are using (**`week4`** for learning, or **`week4-solution-auth`** for the reference app).

When the items above are done, continue with **03-firebase-setup.md**.
