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

## Wire up in `main.dart` (sketch)

```dart
import 'package:provider/provider.dart';
// import your paths...

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TodoProvider()..loadTodos(),
      child: const MaterialApp(
        home: ExampleScreen(),
      ),
    ),
  );
}
```

Use your real `MaterialApp` theme and routes if you already have them.
