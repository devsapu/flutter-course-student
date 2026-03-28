# Week 4 — Introduction: Who Are You?

Welcome to **Week 4: Authentication**. So far your Task Manager app knows how to show screens and collect data. It does **not** yet know **who** is using the app.

## Why authentication matters

- **Personalization**: Tasks can belong to a specific user.
- **Security**: Only signed-in users should see their data (when you connect a backend later).
- **Trust**: Users expect a clear **login** and **logout** experience.

This week we use **Firebase Authentication** so users can **sign in** with **email and password**. You may also add **sign-up** (account creation) in the app or create users in the console. The same ideas apply to other providers (Google, Apple, etc.) later.

## What you will learn

1. What “authentication” and “authorization” mean in simple terms.
2. How to register a Firebase project and enable Email/Password sign-in.
3. How to call Firebase Auth from Flutter (sign in, sign out, and optionally **sign up** with `createUserWithEmailAndPassword`).
4. How to **react** when the user logs in or out using **streams** and `StreamBuilder`.
5. How to debug common setup mistakes.

## How this ties to live coding

Follow the lecturer on screen. These guides give **checklists** and **partial snippets** with `// TODO:` markers. You will **not** copy a full app from here—you complete the missing pieces during the session or in the group activity.

## Prerequisites

- Flutter SDK installed and a working `task_manager_app` project (from earlier weeks).
- A **Google account** (for the Firebase console and, if you use it, the FlutterFire CLI browser sign-in).
- Android emulator or a physical device (iOS is optional if your Mac/Xcode setup is ready).
- For **connecting** your machine to Firebase (CLI, `PATH`, project id, generated files), follow **03-firebase-setup.md → Step 5** in detail.

## Next document

Open **02-authentication-concepts.md** before touching Firebase in the console.
