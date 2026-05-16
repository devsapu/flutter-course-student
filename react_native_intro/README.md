# ICET React Native Intro — Week 8 lab app

Small **React Native** sample used in **Week 8** to learn project structure, **JSX**, **components**, and basic **state** (`useState`). No backend — focus is “second framework” after Flutter.

## Prerequisites

- **Node.js 22+** (`node -v`)
- **npm** (`npm -v`)
- **Android**: same SDK you use for Flutter (`ANDROID_HOME` set) — see [React Native environment](https://reactnative.dev/docs/set-up-your-environment)
- **iOS (optional)**: Xcode + CocoaPods (`bundle exec pod install` in `ios/`)

## Run (Android — recommended in class)

Terminal 1 — start Metro (JavaScript bundler):

```bash
cd react_native_intro
npm start
```

Terminal 2 — build and install on emulator/device:

```bash
cd react_native_intro
npm run android
```

## Run (iOS — Mac only)

```bash
cd react_native_intro
bundle install
cd ios && bundle exec pod install && cd ..
npm run ios
```

## Project layout (what to open first)

```text
react_native_intro/
├── App.tsx                 # Entry — mounts HomeScreen
├── index.js                # Registers the app with React Native
├── package.json            # Dependencies & scripts
├── src/
│   ├── screens/
│   │   └── HomeScreen.tsx  # One full screen (like a Flutter Scaffold page)
│   └── components/
│       ├── WelcomeHeader.tsx
│       ├── LessonCard.tsx
│       ├── PrimaryButton.tsx
│       └── CounterDemo.tsx   # useState demo
├── android/                # Native Android project (Gradle)
└── ios/                    # Native iOS project (Xcode)
```

## Branch

From the **repository root**:

```bash
git checkout week8
```

Student work: `week8/student-<your-name>-intro` → PR to **`week8`** (see **week-guides/week8/10-branching-and-repo.md**).

## Do not commit

- `node_modules/` (already in `.gitignore`)
- Local `.env` files with secrets (not used in this lab)

## Guides

**`week-guides/week8/`** — full 3-hour lecture path starting at **`week-guides/week8.md`**.
