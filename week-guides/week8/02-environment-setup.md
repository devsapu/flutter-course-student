# Week 8 — Environment setup

You already have **Android SDK** and an emulator from Flutter. Week 8 adds **Node.js** and the **React Native CLI** workflow via `npm` scripts.

## 1. Install Node.js

Use **Node 22 LTS** or newer:

- Download: [https://nodejs.org/](https://nodejs.org/)
- Or Homebrew (macOS): `brew install node@22`

Verify:

```bash
node -v    # v22.x or higher
npm -v
```

## 2. Clone / checkout the week branch

From the **repository root**:

```bash
git fetch origin
git checkout week8
cd react_native_intro
npm install
```

`npm install` creates `node_modules/` (not committed — see `.gitignore`).

## 3. Start Metro (JavaScript bundler)

Metro is like Flutter’s tool that pushes Dart changes to the device — for RN it bundles JS.

**Terminal 1** (leave running):

```bash
cd react_native_intro
npm start
```

You should see Metro waiting on port **8081**.

## 4. Run on Android

Start your **Android emulator** (or connect a device with USB debugging).

**Terminal 2**:

```bash
cd react_native_intro
npm run android
```

First build can take several minutes (Gradle downloads). Later runs are faster.

## 5. Verify Fast Refresh

1. Open `src/components/WelcomeHeader.tsx`.
2. Change the emoji or title text.
3. Save — the emulator should update within a few seconds.

## 6. Optional — iOS (Mac + Xcode)

```bash
cd react_native_intro
bundle install
cd ios && bundle exec pod install && cd ..
npm run ios
```

If CocoaPods fails in class, use **Android only** — that is enough for Week 8 goals.

## Environment checklist (instructor can project)

| Step | Command | Success sign |
|------|---------|----------------|
| Node | `node -v` | ≥ 22.11 |
| Deps | `npm install` | No errors |
| Metro | `npm start` | “Dev server ready” |
| App | `npm run android` | App opens on emulator |

## Official reference

[React Native — Set up your environment](https://reactnative.dev/docs/set-up-your-environment)

## Next

**03-project-structure.md** — map folders to what you know from Flutter.
