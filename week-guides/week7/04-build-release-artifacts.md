# Week 7 — Build release artifacts (AAB & APK)

All commands run from **`tap_rush_game/`** unless noted.

## Pre-build checklist

```bash
flutter pub get
flutter analyze
flutter test
```

Fix analyzer/test failures before a release build.

## App Bundle (required for Play upload)

```bash
flutter build appbundle --release
```

**Output file:**

```
build/app/outputs/bundle/release/app-release.aab
```

Upload **this file** to Play Console.

### Optional flags

```bash
# Bump version for a new upload without editing pubspec
flutter build appbundle --release --build-name=1.0.0 --build-number=2

# Obfuscation (advanced — not required Week 7)
flutter build appbundle --release --obfuscate --split-debug-info=build/debug-info
```

## APK (side-load / quick device test)

```bash
flutter build apk --release
```

**Output:**

```
build/app/outputs/flutter-apk/app-release.apk
```

Install on a connected device:

```bash
flutter install --release
# or: adb install build/app/outputs/flutter-apk/app-release.apk
```

### Smaller APKs per CPU

```bash
flutter build apk --release --split-per-abi
```

Produces multiple APKs under `flutter-apk/` — useful for direct sharing, not for standard Play upload.

## Release vs debug behavior

| | Debug | Release |
|---|--------|---------|
| Performance | Slower | Optimized |
| Size | Larger | Smaller |
| Signing | Debug key | Upload keystore |
| `debugShowCheckedModeBanner` | Often on | Off in our game app |

Test release on device before upload:

```bash
flutter run --release
```

## File sizes (expect)

First AAB is often **15–40 MB** for a small app (depends on ABIs, assets). Play Console shows size after upload.

## What to submit in the course PR

- Screenshot of **successful build** terminal output, **or**
- Screenshot of Play Console **internal testing** with version visible

Do **not** commit the `.aab` to git (large binary). Optional: attach to assignment portal only.

## Next

**05-play-console-setup.md** — create the app and testing track.
