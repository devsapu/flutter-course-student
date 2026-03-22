# Week 3 sample code

Copy these files into your Flutter app’s `lib/` folder (e.g. `lib/week3/`) and adjust imports.

## Dependencies

In `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.0
  provider: ^6.1.0
```

Then run:

```bash
flutter pub get
```

## Files

| File | Role |
|------|------|
| `todo_model.dart` | Data class for one todo item |
| `api_service.dart` | Fetches JSON from the network |
| `todo_provider.dart` | `ChangeNotifier` — loading, error, list |
| `example_screen.dart` | List UI + refresh |
| `performance_logger.dart` | Measures how long a call takes (ms) |

## Full flow (Provider)

1. UI calls `TodoProvider.fetchTodos()`
2. Provider sets `loading = true` and calls `notifyListeners()`
3. Service (`api_service.dart`) fetches todos
4. Provider updates `todos` or `error`
5. Provider calls `notifyListeners()` again
6. UI rebuilds and shows loading/data/error

## Wire up in `main.dart` (sketch)

```dart
import 'package:provider/provider.dart';
// import your paths...

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TodoProvider()..fetchTodos(),
      child: const MaterialApp(
        home: ExampleScreen(),
      ),
    ),
  );
}
```

Use your real `MaterialApp` theme and routes if you already have them.
