# Week 4 — Login & sign-up implementation (partial snippets only)

This guide aligns with the **live coding** session. Complete every `// TODO:` in your own project.

## UX goals

- Email field (keyboard type: email).
- Password field (**obscured**).
- **Sign in** button.
- Optional but recommended: **Create account** / **Sign up** (same screen with a toggle, or a separate screen).
- If you add sign-up: **confirm password** field and basic validation (e.g. minimum length, matching passwords).
- Show **error messages** from Firebase (e.g. wrong password, user not found, email already in use).
- Optional: **loading** state while the request runs (disable button or show indicator).

## Widget structure (suggested)

Use a `StatefulWidget` for the login screen so you can hold **controllers** and **loading / error** state.

```dart
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign in')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            // TODO: Add a TextField for password with obscureText: true
            // TODO (sign-up): Optional second field — confirm password — when in "register" mode
            // TODO: Add a button that calls your sign-in method (and/or sign-up method)
            // TODO: TextButton to switch between "Sign in" and "Create account" if you use one screen
          ],
        ),
      ),
    );
  }
}
```

## Sign-in method (shape only)

Handle async work safely: use `try/catch`, check `mounted` before `setState` after `await`.

```dart
Future<void> _signIn() async {
  // TODO: Read email and password from controllers (trim email).
  // TODO: Validate non-empty fields; show SnackBar if invalid.
  try {
    // TODO: Call FirebaseAuth.instance.signInWithEmailAndPassword(
    //   email: ...,
    //   password: ...,
    // );
    if (!mounted) return;
    // TODO: On success, either navigate home or rely on auth stream (see 05-auth-state-handling.md).
  } on FirebaseAuthException catch (e) {
    if (!mounted) return;
    // TODO: Show e.message or a friendly string in SnackBar / Text
  }
}
```

## Sign-up method (shape only)

After a successful **`createUserWithEmailAndPassword`**, Firebase **signs the user in automatically**. Your **`authStateChanges()`** stream should emit a `User` and your **`StreamBuilder`** can show **HomePage**—same as after sign-in—without extra navigation.

```dart
Future<void> _signUp() async {
  // TODO: Read email and password (and confirm password) from controllers.
  // TODO: Validate: non-empty, min password length (e.g. 6), passwords match.
  try {
    // TODO: await FirebaseAuth.instance.createUserWithEmailAndPassword(
    //   email: ...,
    //   password: ...,
    // );
    if (!mounted) return;
    // TODO: Usually nothing else — auth state drives the UI (see 05-auth-state-handling.md).
  } on FirebaseAuthException catch (e) {
    if (!mounted) return;
    // TODO: Map e.code (e.g. email-already-in-use, weak-password) to a friendly SnackBar
  }
}
```

Common **`FirebaseAuthException.code`** values for sign-up: `email-already-in-use`, `weak-password`, `invalid-email`, `operation-not-allowed`.

## Creating test users

In development you can:

- Use **Firebase console → Authentication → Users → Add user**, or
- Add **sign-up in the app** with `createUserWithEmailAndPassword` (see above)—instructors may demo this on the **`week4-solution-auth`** reference branch.

## Good practices

- **Trim** email input.
- Do not log passwords to `print` in production code.
- Prefer **one** place to decide “logged in vs logged out” (next guide).

## Next document

**05-auth-state-handling.md** — `authStateChanges()` and `StreamBuilder`.
