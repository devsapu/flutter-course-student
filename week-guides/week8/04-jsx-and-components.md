# Week 8 — JSX and components

React Native UI is built from **components**: functions that return **JSX** (HTML-like syntax in JavaScript/TypeScript).

## JSX in one minute

JSX looks like HTML but compiles to function calls:

```tsx
<Text style={styles.title}>Hello</Text>
```

Flutter equivalent:

```dart
Text('Hello', style: TextStyle(...))
```

Rules:

- One parent element per return (or use `<>...</>` fragment).
- Close all tags: `<View>...</View>`.
- Use `{expression}` for dynamic values: `{title}`, `{count}`.

## Functional component pattern

From `WelcomeHeader.tsx`:

```tsx
type WelcomeHeaderProps = {
  title: string;
  subtitle: string;
};

export function WelcomeHeader({title, subtitle}: WelcomeHeaderProps) {
  return (
    <View style={styles.card}>
      <Text style={styles.title}>{title}</Text>
      <Text style={styles.subtitle}>{subtitle}</Text>
    </View>
  );
}
```

| Idea | Flutter |
|------|---------|
| `WelcomeHeaderProps` | Constructor parameters + `final` fields |
| `{title}` in JSX | `title` in `Text(title)` |
| `export function` | `class WelcomeHeader extends StatelessWidget` |

## Props = inputs

Parent passes props when using the component:

```tsx
<WelcomeHeader
  title="ICET React Native Intro"
  subtitle="Week 8 — components, JSX, and your first screen"
/>
```

Same idea as:

```dart
WelcomeHeader(title: '...', subtitle: '...')
```

## StyleSheet (layout & colors)

React Native uses a JS object instead of `TextStyle` / `BoxDecoration`:

```tsx
const styles = StyleSheet.create({
  card: {
    backgroundColor: '#FFFFFF',
    borderRadius: 12,
    padding: 16,
  },
  title: {
    fontSize: 17,
    fontWeight: '600',
  },
});
```

Common style keys:

| Style key | Flutter-ish meaning |
|-----------|---------------------|
| `flex: 1` | Expand to fill parent |
| `flexDirection: 'row'` | `Row` |
| `padding` / `margin` | `Padding` / `SizedBox` |
| `backgroundColor` | `color:` on `Container` |
| `fontSize`, `fontWeight` | `TextStyle` |

## Core built-in components

| React Native | Flutter |
|--------------|---------|
| `View` | `Container`, `Column`, `Row` (layout) |
| `Text` | `Text` |
| `Pressable` | `InkWell`, `GestureDetector` |
| `ScrollView` | `SingleChildScrollView` |
| `SafeAreaView` | `SafeArea` |

## State with `useState` (preview)

`CounterDemo.tsx` keeps a number in memory:

```tsx
const [count, setCount] = useState(0);
// ...
<PrimaryButton label="+1" onPress={() => setCount(c => c + 1)} />
```

Full comparison: **07-flutter-vs-react-native.md**.

## Live coding checklist (instructor)

1. Create `src/components/StudentBadge.tsx` with props `name` and `course`.
2. Import it in `HomeScreen.tsx` and render below the header.
3. Save → confirm Fast Refresh.

Students repeat in **06-live-lab.md**.

## Next

**05-demo-app-walkthrough.md** — guided tour of the committed lab app.
