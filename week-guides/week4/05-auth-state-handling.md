# Week 4 — Auth State Handling (Login / Logout)

This topic is **authentication state** for the Task Manager course: how the app reacts when users sign in or out.

When the user signs in or out, the whole app should **react**. Firebase exposes a **stream** of auth changes so you do not manually “remember” login everywhere.

## Core API

```dart
FirebaseAuth.instance.authStateChanges()
```

- Emits `User?` when the user signs in, signs out, or the session refreshes.
- `null` means **no user**; non-null means **signed in**.

**Sign-up:** When **`createUserWithEmailAndPassword`** succeeds, Firebase treats the user as **signed in** immediately. The **same** `authStateChanges()` stream updates, so your **`StreamBuilder`** pattern does not need a separate “registration success” navigation if you already show **HomePage** when `snapshot.hasData`.

## StreamBuilder pattern (lecture)

Wrap your **home** decision in a `StreamBuilder`:

```dart
StreamBuilder<User?>(
  stream: FirebaseAuth.instance.authStateChanges(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      // TODO: Return a small loading UI (Scaffold + CircularProgressIndicator)
    }
    if (snapshot.hasData) {
      // TODO: Return your main app shell (e.g. HomePage)
    }
    // TODO: Return LoginScreen when snapshot.data is null
  },
)
```

## Where to put this

Common choices:

- **`MaterialApp.home`** — simplest for the course.
- **`MaterialApp.routes` / `onGenerateRoute`** — if you already use named routes.

```dart
// TODO: Replace a fixed `home: HomePage()` with the StreamBuilder approach above.
```

## Logout

Any screen that should allow sign-out (e.g. `AppBar` action):

```dart
IconButton(
  icon: const Icon(Icons.logout),
  onPressed: () async {
    // TODO: await FirebaseAuth.instance.signOut();
  },
)
```

After `signOut()`, **`authStateChanges()`** emits `null` and your `StreamBuilder` should **automatically** show the login screen—no manual navigation needed if you structured `home` this way.

## Hot restart vs sign-out

Students sometimes confuse **hot restart** with **logout**. Only **`signOut()`** clears Firebase auth state for the session.

## Error handling on the stream

Rarely, `snapshot.hasError` may be true. For the course:

```dart
// TODO (optional): if (snapshot.hasError) show a retry UI
```

## Checklist

- [ ] `Firebase.initializeApp` runs before any `FirebaseAuth` usage.
- [ ] One central `StreamBuilder` (or equivalent) decides login vs home.
- [ ] Logout calls `signOut()` and UI updates without extra `Navigator` hacks.

## Next document

**06-common-errors.md** — when builds or sign-in fail.
