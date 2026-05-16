# Week 7 — Common errors and fixes

## Build / signing

| Symptom | Likely cause | Fix |
|---------|----------------|-----|
| `key.properties` not found | File missing or wrong path | Create `android/key.properties`; check `storeFile` path |
| Keystore password wrong | Typo in properties | Re-edit `key.properties`; re-run build |
| `flutter build` uses debug signing | No `key.properties` | Add properties file; release block picks up `release` config |
| `Duplicate class` / namespace errors | `namespace` ≠ package folders | Align `namespace` with `applicationId` |
| Version code already used | Re-uploaded same `+n` | Increase number in `pubspec.yaml` |

## Play Console upload

| Symptom | Likely cause | Fix |
|---------|----------------|-----|
| Upload rejected: package name | `applicationId` mismatch | Create new app or fix Gradle to match Console |
| Upload rejected: version code | Not incremented | `version: x.y.z+NEW` |
| “You need to upload an APK/AAB” | Wrong track or draft | Finish release wizard, save, rollout |
| App not visible to tester | Not opted in | Use tester link; same Google account on device |
| “Not compatible with device” | ABI / minSdk | Check `minSdk`; test on physical device |

## Gradle / Flutter

| Symptom | Fix |
|---------|-----|
| Java version error | Use JDK 17; `flutter doctor -v` |
| Android licenses | `flutter doctor --android-licenses` |
| Out of disk space | `flutter clean`; delete old `build/` |

## Git / course repo

| Symptom | Fix |
|---------|-----|
| Wrong week code | `git checkout week7` |
| Accidentally committed `.jks` | Remove from git history with instructor help; rotate keystore if leaked |
| CI fails on PR | Run `flutter analyze` and `flutter test` in `tap_rush_game/` |

## Policy / review

| Symptom | Fix |
|---------|-----|
| Rejected: privacy policy | Add URL; fix Data safety |
| Rejected: login | Provide test credentials in App access notes |
| Rejected: permissions | Remove unused permissions from `AndroidManifest.xml` |

## Stuck?

Compare with reference branch (instructor):

```bash
git fetch origin
git checkout week7-solution-publish
# read-only compare; do not copy another student's applicationId
git diff week7 -- tap_rush_game/
```

Return to your branch: `git checkout week7/student-<you>-publish`
