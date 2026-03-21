# State management (basics)

---

## What is “state”?

**State** is the data your app needs **right now** to draw the screen:

- Is the list **loading**?
- What **todos** do we have?
- Did the user **toggle** dark mode?

When state **changes**, the UI should **update** (rebuild).

---

## Local state with `setState`

Inside a **`StatefulWidget`**, you store data in the **`State`** class. When you change that data, you call **`setState`** so Flutter rebuilds the widget.

```dart
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('$count')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
```

- **`setState`** tells Flutter: “something changed — run `build` again.”
- Good for **one screen** and **simple** data.

---

## UI updates

Rule of thumb:

1. User taps → your code runs.
2. You change data (e.g. load todos from API).
3. You call **`setState`** (local) **or** notify listeners (Provider — see [provider.md](provider.md)).
4. Flutter **rebuilds** → user sees new UI.

---

## When local state is not enough

If **many widgets** or **many screens** need the **same** data, passing variables through every constructor gets messy. That’s **prop drilling** — see [prop-drilling.md](prop-drilling.md).

---

## Next

[provider.md](provider.md) for sharing state app-wide in a clean way.
