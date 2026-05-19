# Task Manager App

Flutter app built step-by-step in the **Flutter Industry-Oriented Mobile Application Development** course. Each week branch adds new features and structure.

## First-time setup (generate platform folders)

This repo contains `lib/` and `pubspec.yaml` only. To run the app you need the Flutter platform folders (`android/`, `ios/`, etc.). After installing Flutter, run **once** in this directory:

```bash
flutter create .
```

Use the existing `lib/` and `pubspec.yaml` when prompted (keep them). This generates `android/`, `ios/`, etc., without overwriting your code.

## Run the app

From this directory (`task_manager_app/`):

```bash
flutter pub get
flutter run
```

- **Hot reload:** press `r` in the terminal  
- **Hot restart:** press `R` in the terminal  

## Branch by week

From the **repository root** (parent of `task_manager_app/`):

```bash
git checkout week-1   # Setup & first app
git checkout week-2   # UI: login, task list, task card
git checkout week-3   # API integration
git checkout week4    # Firebase Authentication
git checkout week5    # FCM push notifications
git checkout week7    # Play Store publishing (see tap_rush_game/)
# ... week-8-final
```

Then run the app from `task_manager_app/` as above.

## Structure (evolves by week)

- **Week 1–2:** `lib/main.dart`, `lib/home_page.dart`, then `screens/`, `widgets/`
- **Week 3:** `models/`, `services/`
- **Week 4:** `providers/`
- **Week 5+:** Clean Architecture – `core/`, `features/*/data|domain|presentation`

See the **week-guides** in the repo root for each week’s content and exercises.
