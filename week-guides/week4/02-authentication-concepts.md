# Week 4 — Authentication Concepts (Beginner-Friendly)

## Authentication vs authorization

| Term | Plain meaning | Example |
|------|----------------|---------|
| **Authentication** | Proving **who you are** | Entering email + password |
| **Authorization** | What you are **allowed to do** | “Only admins can delete all tasks” |

This week focuses on **authentication** using Firebase.

## Email & password flow (high level)

1. User types **email** and **password** in your Flutter UI.
2. Your app sends them to **Firebase Authentication** (never store raw passwords in your own database for this flow—Firebase handles that securely).
3. If credentials are valid, Firebase gives your app a way to know the user is signed in (see **auth state** in **auth-flow-explained.md**).
4. If invalid, Firebase returns an **error** you show in the UI (e.g. “wrong password”).

## Firebase Auth in one sentence

**Firebase Authentication** is a managed service that stores user accounts and tells your app whether someone is signed in—so you do not build login servers from scratch for this course.

## Flutter pieces you will use

| Piece | Role |
|--------|------|
| `firebase_core` | Initializes Firebase once when the app starts. |
| `firebase_auth` | Sign in, sign out, **create users** (`createUserWithEmailAndPassword`), listen to auth changes. |
| `StreamBuilder` | Rebuilds UI when login state changes (lecture focus). |

## Partial pattern: imports (lecture)

You will add dependencies in `pubspec.yaml` first (see **03-firebase-setup.md**). In Dart:

```dart
import 'package:firebase_auth/firebase_auth.dart';
```

## Partial pattern: FirebaseAuth instance

```dart
final FirebaseAuth _auth = FirebaseAuth.instance;
```

## TODO (during lecture)

```dart
// TODO: After setup, confirm you can import firebase_auth without analysis errors.
```

## Mental model

Think of Firebase Auth as a **bouncer** at a door: you show ID (email/password); the bouncer either lets you in or refuses. Your Flutter UI is the **queue**; Firebase is the **check**.

## Next document

**03-firebase-setup.md** — create the Firebase project and wire Android (and iOS if applicable).
