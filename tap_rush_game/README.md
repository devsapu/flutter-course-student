# Tap Rush — Week 7 publish lab app

Small **tap-the-target** game used in **Week 7** to practice **release builds**, **signing**, and **Google Play Console** submission. It has **no Firebase** dependency so the focus stays on publishing.

## Run (debug)

```bash
cd tap_rush_game
flutter pub get
flutter run
```

## Release build (after signing — see week guides)

```bash
flutter build appbundle
# or: flutter build apk
```

Output:

- **AAB (Play Store):** `build/app/outputs/bundle/release/app-release.aab`
- **APK (side-load / testing):** `build/app/outputs/flutter-apk/app-release.apk`

## Change your app identity (required before store)

1. Pick a unique **application ID** (reverse-DNS), e.g. `com.yourname.taprush`.
2. Update `android/app/build.gradle.kts` → `applicationId` and `namespace`.
3. Update `pubspec.yaml` → `name` only if you rename the Dart package (optional for this lab).
4. Change the display name in `android/app/src/main/AndroidManifest.xml` → `android:label`.

Full steps: **`week-guides/week7/`** in the repo root.

## Branch

From the **repository root**:

```bash
git checkout week7
```

Student work: `week7/student-<your-name>-publish` (see **week-guides/week7/10-branching-and-repo.md**).

## Do not commit

- `android/key.properties`
- `*.jks` / `*.keystore`
- Upload keystore passwords in chat or GitHub
