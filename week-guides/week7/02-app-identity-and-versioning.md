# Week 7 — App identity, versioning, and branding

Every store listing is tied to one **application ID**. Branding (name, icon) is what users see.

## 1. Choose your application ID

**Rules:**

- Reverse-DNS style: `com.company.product` or `com.icet2026.yourname.taprush`
- Lowercase letters, digits, underscores — **no spaces**
- **Must be unique** — pick your name or student ID in the string
- **Cannot change** after the first upload to Play Console

**Default in the lab app (change this):**

```kotlin
applicationId = "com.icet.student.tap_rush_game"
```

**File:** `tap_rush_game/android/app/build.gradle.kts` → `defaultConfig { applicationId = "..." }`  
Also set **`namespace`** to the same value (Kotlin/Android package root).

## 2. Version name and version code

**File:** `tap_rush_game/pubspec.yaml`

```yaml
version: 1.0.0+1
```

| Part | Meaning | Android field |
|------|---------|----------------|
| `1.0.0` | User-visible version | `versionName` |
| `+1` | Integer build number | `versionCode` |

**Every new upload** to Play must increase **`versionCode`** (the number after `+`):

```yaml
version: 1.0.1+2
```

Override at build time (optional):

```bash
flutter build appbundle --build-name=1.0.1 --build-number=2
```

## 3. Display name (launcher label)

**File:** `tap_rush_game/android/app/src/main/AndroidManifest.xml`

```xml
android:label="Tap Rush"
```

Users see this under the icon. Match your Play Store **app name** closely.

## 4. App icon

- Place adaptive icons in `android/app/src/main/res/mipmap-*` (Flutter template already has `ic_launcher`).
- For store listing you also upload a **512×512** graphic in Play Console (separate from mipmap).

## 5. Optional: rename Dart package

Not required for Week 7. If you change `pubspec.yaml` `name:`, update imports and `test/` — only do this if you understand the impact.

## 6. Verify before building

```bash
cd tap_rush_game
grep applicationId android/app/build.gradle.kts
grep version pubspec.yaml
grep android:label android/app/src/main/AndroidManifest.xml
```

## Checklist

- [ ] Unique `applicationId` / `namespace` set
- [ ] `version: x.y.z+n` with `n` ≥ 1
- [ ] `android:label` updated
- [ ] Committed **without** keystore files

## Next

**03-release-signing.md** — create upload key and Gradle signing.
