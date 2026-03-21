# Week 3 — Async, APIs & State (Flutter)

Welcome to Week 3. You will learn how apps **wait for data** without freezing, **talk to the internet**, and **share state** across screens without messy code.

---

## Learning objectives

By the end of this week you should be able to:

- Explain why some code runs **later** (async) and how `Future` and `async`/`await` help.
- Call a **REST API** with `http`, handle **loading** and **errors**, and show data in the UI.
- Tell **local state** (`setState`) apart from **global state** (shared across widgets).
- Recognize **prop drilling** and know when to use **Provider** instead.
- Use **ChangeNotifier** + **Provider** to update the UI when data changes.

---

## Topics covered

| Topic | What it is (short) |
|--------|---------------------|
| **Async programming** | `Future`, `async`/`await` — code that finishes later without blocking the UI thread. |
| **API integration** | HTTP `GET`/`POST`, JSON, turning responses into Dart objects. |
| **Local vs global state** | One widget’s data vs data many widgets need. |
| **Prop drilling** | Passing the same data through many parent widgets — gets painful fast. |
| **Provider** | A simple way to put state “above” the tree and listen to changes. |

---

## Suggested learning order

1. **async-await** (`theory/async-await.md`) — understand `Future` and `async`/`await` first.
2. **API** (`theory/api-and-async.md`) — then add real network calls.
3. **State** (`theory/state-management.md`) — local state and `setState`.
4. **Prop drilling** (`theory/prop-drilling.md`) — why passing data down many layers hurts.
5. **Provider** (`theory/provider.md`) — share state without passing props everywhere.

**Diagrams** in `diagrams/` give a visual overview. **Sample code** in `sample-code/` ties it together.

---

## Folder map

| Folder | Purpose |
|--------|---------|
| `theory/` | Short lessons (read in order above). |
| `diagrams/` | Mermaid diagrams — open in GitHub or an editor that renders Mermaid. |
| `sample-code/` | Example files to copy into your app (see `sample-code/README.md`). |
| `resources/` | Free public APIs to practice with. |
| `group-activity-1/` | Guided hands-on (10 groups). |
| `group-activity-2/` | Exploration + thinking (10 groups). |

---

## How to run the project (with sample code)

1. Open your Flutter project (e.g. `task_manager_app/`).
2. Add dependencies in `pubspec.yaml` (see `sample-code/README.md` for exact lines).
3. Copy the `.dart` files from `sample-code/` into `lib/` (or a subfolder like `lib/week3/`).
4. Fix import paths if you use subfolders.
5. Register your `TodoProvider` in `main.dart` with `ChangeNotifierProvider` (see `theory/provider.md` and `sample-code/example_screen.dart`).
6. Run:

```bash
cd task_manager_app
flutter pub get
flutter run
```

---

## Quick links

- [Async & await](theory/async-await.md)
- [APIs & async](theory/api-and-async.md)
- [State management](theory/state-management.md)
- [Prop drilling](theory/prop-drilling.md)
- [Provider](theory/provider.md)
- [Public APIs](resources/public-apis.md)

Good luck — build small, test often, read error messages slowly.
