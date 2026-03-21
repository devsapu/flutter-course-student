# HTTP APIs and async in Flutter

---

## HTTP requests in Flutter

Mobile apps often load data from the **internet** using **HTTP** (usually **REST** APIs). The server sends **JSON** text; your app turns it into Dart objects.

Flutter does not load URLs by itself in the widget tree — you use a package like **`http`**.

Add to `pubspec.yaml`:

```yaml
dependencies:
  http: ^1.2.0
```

Then:

```dart
import 'package:http/http.dart' as http;
```

---

## Why async is required for APIs

A network request is **slow** (milliseconds to seconds). If you waited **synchronously**, the UI would **freeze**.

So `http.get` returns a **`Future`** — you **`await`** it inside an **`async`** function.

---

## Example: `http.get`

```dart
import 'package:http/http.dart' as http;

Future<String> fetchTitle() async {
  final uri = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  final response = await http.get(uri);

  if (response.statusCode == 200) {
    return response.body; // raw JSON string
  } else {
    throw Exception('Failed to load: ${response.statusCode}');
  }
}
```

- **`statusCode` `200`** usually means success.
- **`response.body`** is the text (often JSON).

---

## What `Uri.parse` does

`http.get` expects a **`Uri`** object, not a plain string.

So this line:

```dart
final uri = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
```

means:

- take a URL string
- convert it to a structured `Uri`
- make it ready for `http.get(uri)`

You can also build URLs more safely with `Uri.https` when query values are dynamic:

```dart
final uri = Uri.https(
  'jsonplaceholder.typicode.com',
  '/posts',
  {'_limit': '10'},
);
```

This helps avoid mistakes when building query strings manually.

---

## Error handling

Networks fail (no Wi‑Fi, server error, timeout). Always use **`try` / `catch`** (and show a message in the UI).

```dart
Future<String?> safeFetch() async {
  try {
    final uri = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      return response.body;
    }
    throw Exception('Bad status: ${response.statusCode}');
  } catch (e) {
    print('Error: $e');
    return null;
  }
}
```

In a real screen, set an **error state** (e.g. `String? errorMessage`) and call **`setState`** or update a **Provider** so the user sees a friendly message.

---

## JSON

APIs return JSON strings. Use **`dart:convert`**:

```dart
import 'dart:convert';

final map = jsonDecode(response.body) as Map<String, dynamic>;
final title = map['title'] as String?;
```

Build a **model class** for cleaner code (see `sample-code/todo_model.dart`).

---

## Next

- [state-management.md](state-management.md) — show loading / data / error in the UI.
- [../resources/public-apis.md](../resources/public-apis.md) — URLs to practice with.
