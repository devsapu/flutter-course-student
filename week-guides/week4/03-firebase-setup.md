# Week 4 — Firebase Setup (Step by Step)

Follow these steps **before** writing login UI code. Your lecturer may demonstrate on screen; use this as a checklist.

## Step 1 — Create a Firebase project

1. Go to the [Firebase Console](https://console.firebase.google.com/).
2. Click **Add project** (or use an existing one for the course).
3. Disable Google Analytics if you want a minimal project (or enable if your instructor prefers).

## Step 2 — Register your app(s)

### Android

1. In Firebase project **Project settings**, under **Your apps**, add an **Android** app.
2. **Android package name** must match your Flutter app’s `applicationId` (often `com.example.task_manager_app` in `android/app/build.gradle.kts`).
3. Download **`google-services.json`**.
4. Place it in:

   `task_manager_app/android/app/google-services.json`

### iOS (optional this week)

1. Add an **iOS** app with the **Bundle ID** from Xcode (e.g. `com.example.taskManagerApp`).
2. Download **`GoogleService-Info.plist`** and add it to the **Runner** target in Xcode (lecturer demo).

## Step 3 — Enable Email/Password sign-in

1. In Firebase Console: **Build → Authentication → Sign-in method**.
2. Enable **Email/Password** (first option, not “Email link” unless instructed).

## Step 4 — Flutter dependencies

In `task_manager_app`, add packages (versions may differ—use what `flutter pub add` suggests):

```yaml
dependencies:
  firebase_core: ^x.y.z   # TODO: set version from pub.dev / lecturer
  firebase_auth: ^x.y.z   # TODO: set version from pub.dev / lecturer
```

Then run:

```bash
cd task_manager_app
flutter pub get
```

## Step 5 — FlutterFire CLI (recommended)

Your instructor may run:

```bash
dart pub global activate flutterfire_cli
flutterfire configure
```

This generates `lib/firebase_options.dart` for your machines. **Do not commit real production keys** to a public repo if your instructor forbids it—use course rules.

## Step 6 — Gradle (Android)

You must apply the **Google services** plugin for Android. In **Kotlin DSL** projects this usually means:

1. **Project-level** `settings.gradle.kts` (or root Gradle): declare the Google services plugin version with `apply false`.
2. **App-level** `android/app/build.gradle.kts`: apply `com.google.gms.google-services`.

Exact lines will be shown in the lecture. Your checklist:

```kotlin
// TODO: In app/build.gradle.kts — apply the google-services plugin id in the plugins { } block.
```

## Step 7 — Initialize Firebase in Dart

In `main.dart`, Firebase must be initialized **before** `runApp`:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO: await Firebase.initializeApp( ... );
  runApp(const TaskManagerApp());
}
```

You will pass the correct options (e.g. from `firebase_options.dart`) during live coding.

## Verification

- `flutter pub get` succeeds.
- App **builds** for Android after `google-services.json` is in place.
- Firebase console shows **Authentication** ready with **Email/Password** enabled.

## Next document

**04-login-implementation.md** — build the login screen and call Firebase.
