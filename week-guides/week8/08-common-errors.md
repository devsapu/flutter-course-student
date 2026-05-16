# Week 8 — Common errors & fixes (React Native)

Symptoms refer to **`react_native_intro`** on branch **`week8`**.

## Metro / bundler

| Symptom | Fix |
|---------|-----|
| `Unable to load script` / red screen | Start Metro: `npm start` in `react_native_intro/` |
| Port 8081 in use | Kill old Metro: `lsof -i :8081` then stop process, or `npm start -- --port 8082` |
| Stale bundle after big change | Metro terminal → press `r` reload, or shake device → Reload |
| `npm install` errors | Check Node ≥ 22; delete `node_modules` and run `npm install` again |

## Android

| Symptom | Fix |
|---------|-----|
| `adb: no devices` | Start emulator or plug in device; `adb devices` |
| Gradle / SDK errors | Same as Flutter: open Android Studio SDK Manager; ensure **cmdline-tools** installed (Week 7 fix) |
| Build succeeds, app white screen | Metro not running — start `npm start` |
| `JAVA_HOME` issues | Use JDK 17; match Flutter Android setup |

## iOS (optional)

| Symptom | Fix |
|---------|-----|
| CocoaPods prompt during init | Run `cd ios && bundle exec pod install` |
| Signing errors | Open `ios/*.xcworkspace` in Xcode → set Team |
| Simulator not booting | `open -a Simulator` then `npm run ios` |

## TypeScript / component errors

| Symptom | Fix |
|---------|-----|
| `Cannot find module '../components/...'` | Check path and file name case (`StudentBadge.tsx`) |
| `Property 'foo' does not exist on type` | Add prop to `type XxxProps = { ... }` |
| Red squiggle but app runs | IDE may need restart after `npm install` |

## Git / PR

| Symptom | Fix |
|---------|-----|
| Accidentally committed `node_modules` | Remove from git: `git rm -r --cached react_native_intro/node_modules` — only commit source |
| Huge PR diff | Ensure `.gitignore` includes `node_modules/` |

## Still stuck?

```bash
git fetch origin
git checkout week8
cd react_native_intro
rm -rf node_modules
npm install
npm start
# new terminal
npm run android
```

Compare your component files with **`05-demo-app-walkthrough.md`**.

## Next

Instructors: **09-instructor-session-guide.md**.
