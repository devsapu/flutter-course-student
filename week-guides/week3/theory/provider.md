# Provider & global state

---

## Global state (in simple terms)

**Global state** here means: data that **more than one part** of the widget tree needs, without passing it through every constructor.

We still want **one place** that **owns** the data and **tells** the UI when it changes.

---

## `ChangeNotifier`

`ChangeNotifier` is a class from Flutter that can **`notifyListeners()`**. Widgets listening to it will **rebuild**.

```dart
class CounterModel extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}
```

---

## Provider package

Add to `pubspec.yaml`:

```yaml
dependencies:
  provider: ^6.1.0
```

**Put** the model **above** the widgets that need it:

```dart
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterModel(),
      child: const MyApp(),
    ),
  );
}
```

---

## Read and listen in the UI

**`context.watch<T>()`** — rebuild when `T` changes.  
**`context.read<T>()`** — get it once (e.g. inside `onPressed`), no rebuild from this line.

```dart
final model = context.watch<CounterModel>();
// Use model.count in build()

// In a button:
onPressed: () => context.read<CounterModel>().increment(),
```

---

## Basic flow

1. Create a class extending **`ChangeNotifier`**.
2. Wrap your app (or a subtree) with **`ChangeNotifierProvider`**.
3. Call **`notifyListeners()`** after you change data.
4. Use **`watch`** / **`read`** in descendants.

See `sample-code/todo_provider.dart` and `example_screen.dart` for a full mini-example.

---

## Next

- `diagrams/data-flow.md` — API → Provider → UI.
- `group-activity-1/` — practice step by step.
