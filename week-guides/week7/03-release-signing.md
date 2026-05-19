# Week 7 — Release signing (upload keystore)

Play Store requires **release builds signed with your upload key**. Google may re-sign with **Play App Signing**; you still create and safeguard the **upload keystore**.

## Step 1 — Create a keystore (one time per app)

Run from `tap_rush_game/android/` (adjust paths if you prefer another folder **outside** git):

```bash
cd tap_rush_game/android
keytool -genkey -v -keystore upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

You will be asked for:

- Keystore password
- Key password (can match keystore password)
- Name, organization, country (can be simple for lab)

**Backup:** copy `upload-keystore.jks` to a safe place (USB, password manager vault). **If you lose it**, you may not be able to update the same Play listing.

## Step 2 — Create key.properties (local only)

Copy the example:

```bash
cp key.properties.example key.properties
```

Edit `tap_rush_game/android/key.properties`:

```properties
storePassword=YOUR_KEYSTORE_PASSWORD
keyPassword=YOUR_KEY_PASSWORD
keyAlias=upload
storeFile=upload-keystore.jks
```

`storeFile` is relative to `android/app/` in our Gradle script (`file(...)` in `app/build.gradle.kts`). With the keystore in `android/upload-keystore.jks`, use:

```properties
storeFile=../upload-keystore.jks
```

## Step 3 — How Gradle uses it (already in the lab app)

`tap_rush_game/android/app/build.gradle.kts`:

- Loads `android/key.properties` if present
- Uses `signingConfigs.release` for **release** builds
- Falls back to **debug** signing if `key.properties` is missing (so `flutter build` still works in class before keys exist)

## Step 4 — Confirm signing

After `key.properties` exists:

```bash
cd tap_rush_game
flutter build appbundle --release
```

Optional — inspect signing (requires Android SDK build-tools):

```bash
# Path varies; example:
jarsigner -verify -verbose -certs build/app/outputs/bundle/release/app-release.aab
```

## Play App Signing (concept)

On first upload, Google often asks you to enroll in **Play App Signing**:

- Google holds the **app signing key** used for devices
- You keep the **upload key** (your keystore) for new bundles

Accept the default enrollment unless your institution says otherwise.

## What never goes in Git

| File | Commit? |
|------|---------|
| `key.properties` | **No** |
| `upload-keystore.jks` | **No** |
| `key.properties.example` | **Yes** (no secrets) |

## Next

**04-build-release-artifacts.md** — produce the `.aab` file.
