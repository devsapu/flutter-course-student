# Group Activity 1 — Login for Task Manager (10 Groups)

**Course:** Flutter Industry Course  
**Week:** 4 — Authentication (Firebase)  
**App:** `task_manager_app`

---

## Objective

Each group implements **email/password login** using **Firebase Authentication**, wired to the existing Task Manager project, so that **only signed-in users** see the main app shell (e.g. `HomePage`), and unsigned-in users see a **login screen**. Groups may also add **sign-up** (`createUserWithEmailAndPassword`) so new users can register from the app (see **04-login-implementation.md**).

---

## Roles (suggested for 10 groups)

Split work inside each group, e.g.:

- **Navigator** — keeps the group on the checklist and timebox.
- **Driver** — shares screen / types with group agreement.
- **Reviewer** — checks Firebase console and Gradle/Dart errors.

All members should be able to explain **auth state** in one sentence at the end.

---

## Step-by-step tasks

1. **Firebase project**  
   - Create or use the course Firebase project.  
   - Enable **Email/Password** authentication.  
   - Register the **Android** app with the correct **package name**; download `google-services.json` into `android/app/`.

2. **Dependencies**  
   - Add `firebase_core` and `firebase_auth` to `pubspec.yaml`.  
   - Run `flutter pub get`.

3. **Gradle**  
   - Apply the **Google services** plugin as shown in lecture (`settings.gradle.kts` + `app/build.gradle.kts`).

4. **Initialization**  
   - In `main.dart`, ensure Firebase is initialized **before** `runApp` (with options from `flutterfire configure` or equivalent).

5. **Login UI**  
   - Build a `LoginScreen` with email field, password field (obscured), and sign-in button.  
   - **Optional extension:** add **Create account** (sign-up) with `createUserWithEmailAndPassword`, confirm password, and friendly errors (`email-already-in-use`, `weak-password`, etc.).  
   - Show **Firebase error messages** in a user-friendly way.

6. **Auth state**  
   - Use `FirebaseAuth.instance.authStateChanges()` with a **`StreamBuilder`** (or pattern demonstrated in class) so the app switches between **LoginScreen** and **HomePage** automatically.

7. **Smoke test**  
   - Create at least one test user (**Firebase console** and/or **in-app sign-up**).  
   - Confirm: sign in (or sign up) → home appears; **no manual “fake” navigation** that bypasses Firebase.

---

## Expected outcome

- Running the app on an emulator or device:  
  - **Not signed in** → login UI.  
  - **Valid credentials** → main app visible.  
- Code is **readable** and uses **`// TODO:` only where your instructor allows** (replace with real code before demo).

---

## Hints (no solutions)

- If the Android build mentions **google-services**, compare **file location** and **plugin** order with the lecture project.  
- If sign-in “does nothing,” check whether you are waiting on **`async`** and whether **auth state** drives the root widget.  
- Trim **email** input; passwords are easy to mistype—test with a known user from the Firebase console.  
- Use `if (!mounted) return;` after **`await`** before `setState`.

---

## Bonus challenges

1. **Logout:** Add a **logout** control on `HomePage` (e.g. `AppBar` **icon**). Tapping it should call Firebase **sign out** and return the user to the login flow **via auth state**, not a hard-coded route that could leave Firebase still signed in.

2. **Sign-up:** Add **Create account** on the login flow so new users appear under **Authentication → Users** without using the console.

---

## Discussion questions (5–10 minutes)

1. Why is it risky to store **plain-text passwords** in your own Firestore documents?  
2. How does **`authStateChanges()`** reduce duplicated “is logged in?” logic across screens?  
3. What is one difference between **Firebase Auth** and running your own **OAuth** server?  
4. Where would you put **role-based** rules (admin vs student)—in Firebase Auth alone, or elsewhere too?

---

## Deliverables (instructor may adjust)

- Short demo (2 minutes): login + home + **bonus** logout and/or **sign-up** if completed.  
- One paragraph per group: **what broke** and **how you fixed it**.
