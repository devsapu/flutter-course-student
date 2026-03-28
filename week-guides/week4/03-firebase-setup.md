# Week 4 — Firebase Setup (Step by Step)

> ⚠️ Before you start  
> Make sure you have completed the prerequisites:  
> 👉 See: `00-prerequisites.md`  
>  
> This includes installing Firebase CLI, logging in, and setting up FlutterFire CLI.

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

## Step 4b — Install the Firebase CLI (required before FlutterFire)

The Firebase console wizard **“Install and run the FlutterFire CLI”** step assumes the **official Firebase CLI** is installed. FlutterFire runs commands such as `firebase --version` internally; without it you may see **“requires the official Firebase CLI”** or **“Found 0 Firebase projects”**.

1. **Install** the Firebase CLI (pick one):
   - **macOS (Homebrew):** `brew install firebase-cli`
   - **npm:** `npm install -g firebase-tools`  
   See: [Install the Firebase CLI](https://firebase.google.com/docs/cli#install_the_firebase_cli).

2. **Verify:** `firebase --version`

3. **Log in** (browser flow): `firebase login`

### 💡 Important

* You must run `firebase login` successfully
* If not, you may see:

  * “Found 0 Firebase projects”
  * “Requires the official Firebase CLI”

👉 These errors usually mean you are not authenticated.

After this works on your machine, continue with **Step 5**. The console command sequence matches what Firebase shows, for example:

```bash
dart pub global activate flutterfire_cli
cd task_manager_app   # your Flutter app root
flutterfire configure --project=YOUR_FIREBASE_PROJECT_ID
```

Optional flags (same as Step 5c): `-y`, `--platforms=android,ios`, `--android-package-name=...`, `--ios-bundle-id=...`.

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

### ✅ Expected result

After running the command successfully, you should see:

* `lib/firebase_options.dart`
* `android/app/google-services.json`
* `ios/Runner/GoogleService-Info.plist`

👉 If these files are missing, the setup did NOT complete correctly.

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

### 🧭 Which branch should I use?

* **week4 (recommended for students)**

  * Step-by-step Firebase integration
  * Best for learning

* **week4-solution-auth**

  * Fully working reference implementation
  * Use this if you get stuck or want to compare

💡 Tip:
If your app doesn’t work after setup, switch to the solution branch and compare.

### 🔐 Security note

Do not commit Firebase config files to a public repository unless instructed.

These files include:

* `google-services.json`
* `GoogleService-Info.plist`
* `firebase_options.dart`

Use a private repository or separate Firebase projects for learning.

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

## 🆘 If you're stuck

Run:

```bash
git checkout week4-solution-auth
cd task_manager_app
flutter pub get
flutter run
```

This gives you a working reference app.
