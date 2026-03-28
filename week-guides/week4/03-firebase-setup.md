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

The [FlutterFire CLI](https://firebase.flutter.dev/docs/cli/) can create **`lib/firebase_options.dart`** and download **`google-services.json`** / **`GoogleService-Info.plist`** for you. You must run it on **your own computer** (it opens a browser or uses cached Google login).

### 5a — Install the CLI and fix `PATH`

```bash
dart pub global activate flutterfire_cli
```

If the terminal says `flutterfire: command not found`, add Pub’s bin directory to your `PATH` (zsh example — add to `~/.zshrc` if you want it permanent):

```bash
export PATH="$PATH:$HOME/.pub-cache/bin"
```

Open a **new** terminal window after changing `PATH`, then check:

```bash
flutterfire --help
```

### 5b — Know your Firebase project id

In the Firebase Console, **Project settings** → **Project ID** (e.g. `my-course-task-manager`). The CLI needs this id.

You will see an error like **“A Firebase project id must be specified”** if you skip this. Pass it with `--project=YOUR_PROJECT_ID`.

### 5c — Run `configure` from `task_manager_app`

From the repository root, go into the Flutter app folder, then run `configure`. Example for **Android + iOS** with this repo’s default ids (adjust if you changed them in Gradle / Xcode):

```bash
cd task_manager_app

flutterfire configure -y \
  --project=YOUR_FIREBASE_PROJECT_ID \
  --platforms=android,ios \
  --android-package-name=com.example.task_manager_app \
  --ios-bundle-id=com.example.taskManagerApp
```

- Replace **`YOUR_FIREBASE_PROJECT_ID`** with your real project id.
- **`-y`** skips extra confirmation prompts and accepts sensible defaults.
- Omit `ios` in `--platforms=...` if you only build Android this week.

**First run:** the tool may ask you to **sign in with Google** and authorize access to Firebase. Complete that in the browser.

### 5d — What this command updates

Typical outputs (paths may vary slightly by CLI version):

| Output | Role |
|--------|------|
| `lib/firebase_options.dart` | Passed to `Firebase.initializeApp(options: ...)` |
| `android/app/google-services.json` | Android native Firebase config |
| `ios/Runner/GoogleService-Info.plist` | iOS native Firebase config |

### 5e — Repository branches (course layout)

- On **`week4`**, you add Firebase **yourself** (dependencies, Gradle, `main.dart`) following the lecture and guides.
- If your instructor provides a **solution branch** with Firebase already wired, run `flutterfire configure` **from that branch** so generated files match the same `applicationId` / bundle id.

### 5f — Security and Git

**Do not commit** real Firebase keys to a **public** repository if your course policy forbids it. Use a **private** repo, **`.gitignore`** for local config only if the instructor allows, or **environment-specific** projects (dev vs prod) as directed.

### 5g — Manual alternative (no CLI)

You can skip the CLI and still complete Week 4: register apps in the console (**Step 2**), download the JSON/plist by hand, and write **`firebase_options.dart`** yourself using the values shown in the Firebase console (lecturer demo). The CLI only automates that step.

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
