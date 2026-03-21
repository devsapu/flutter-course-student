# Async programming: `Future`, `async`, and `await`

---

## Synchronous vs asynchronous

**Synchronous** code runs line by line. The next line waits until the current line finishes.

**Asynchronous** code can **start** something and **come back later** when it is done. While you wait, the app can still draw the UI and respond to taps.

In Flutter, **you must not block the UI thread** with long work (big loops, waiting for the network). Async code helps you schedule that work without freezing the screen.

---

## Real-world analogy: restaurant

- **Synchronous:** You stand at the counter until your food is ready. Nothing else happens.
- **Asynchronous:** You get a **buzzer**. You sit down. When the buzzer rings (**later**), you pick up your food.

`Future` is like the buzzer — a **promise** that a value will arrive later.

---

## What is a `Future`?

A **`Future<T>`** means: “I will give you a value of type `T` **in the future**.”

```dart
Future<String> fetchMessage() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Hello!';
}
```

- If something returns `Future`, the work may finish **after** the function returns.
- You use **`await`** inside an **`async`** function to **wait** for that result **without** blocking the whole app badly (the runtime can do other work).

---

## `async` and `await`

- **`async`** — marks a function that can use `await` and returns a `Future` automatically.
- **`await`** — pauses **this** async function until the `Future` completes, then gives you the result.

```dart
void load() async {
  final text = await fetchMessage(); // wait here inside load()
  print(text);
}
```

---

## Example: `Future.delayed`

```dart
Future<void> demo() async {
  print('Start');
  await Future.delayed(const Duration(seconds: 2));
  print('2 seconds later');
}
```

`Future.delayed` returns a `Future` that completes after the delay.

---

## Common mistakes

1. **Forgetting `await`**  
   You get a `Future` object instead of the real value.

   ```dart
   // Wrong for printing the string:
   final x = fetchMessage(); // x is Future<String>, not String!
   ```

2. **Using `await` in a non-`async` function**  
   Dart will not allow it — mark the function `async`.

3. **Blocking the UI on purpose**  
   Avoid huge synchronous work on the main isolate. For heavy CPU work, look up **isolates** later; for network, use `async`/`await` with `http`.

4. **Not handling errors**  
   Use `try` / `catch` around `await` calls that can fail (see `api-and-async.md`).

---

## Next

Read [api-and-async.md](api-and-async.md) to connect async code to real HTTP requests.
