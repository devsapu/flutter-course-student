# Week 4 — Login Implementation (Partial Snippets Only)

This guide aligns with the **live coding** session. Complete every `// TODO:` in your own project.

## UX goals

- Email field (keyboard type: email).
- Password field (**obscured**).
- **Sign in** button.
- Show **error messages** from Firebase (e.g. wrong password, user not found).
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
            // TODO: Add a button that calls your sign-in method
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

## Creating test users

In development you can:

- Use **Firebase console → Authentication → Users → Add user**, or
- Add a **registration** screen later (not required for Week 4 minimum).

## Good practices

- **Trim** email input.
- Do not log passwords to `print` in production code.
- Prefer **one** place to decide “logged in vs logged out” (next guide).

## Next document

**05-auth-state-handling.md** — `authStateChanges()` and `StreamBuilder`.
