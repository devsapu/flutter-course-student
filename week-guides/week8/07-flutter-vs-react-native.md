# Week 8 — Flutter vs React Native (cheat sheet)

Use this when students ask “what is the Flutter word for X?”

## Language & project

| Topic | Flutter | React Native |
|-------|---------|----------------|
| Language | Dart | JavaScript / TypeScript |
| Package manager | `pub` | `npm` / `yarn` |
| Config file | `pubspec.yaml` | `package.json` |
| Entry | `main()` | `index.js` + `AppRegistry` |
| Run dev | `flutter run` | `npm start` + `npm run android` |
| Hot reload | Hot reload / hot restart | Fast Refresh |

## UI building blocks

| Flutter | React Native |
|---------|----------------|
| `StatelessWidget` | Function component |
| `StatefulWidget` | Function + `useState` / `useEffect` |
| `build(BuildContext context)` | `return (...)` JSX |
| Constructor params | Props |
| `child:` / `children:` | Nested JSX children |
| `Column` | `View` with `flexDirection: 'column'` (default) |
| `Row` | `View` with `flexDirection: 'row'` |
| `Text` | `Text` |
| `ElevatedButton` | `Pressable` + styles |
| `Scaffold` | `SafeAreaView` + layout `View`s |
| `Navigator.push` | React Navigation (later) |

## State

| Flutter | React Native |
|---------|----------------|
| `setState(() { count++; })` | `setCount(c => c + 1)` |
| `final int count` in State class | `const [count, setCount] = useState(0)` |

## Styling

| Flutter | React Native |
|---------|----------------|
| `Theme.of(context)` | Style objects / libraries (no built-in Material in core RN) |
| `TextStyle(fontSize: 16)` | `{ fontSize: 16 }` in `StyleSheet` |
| `Colors.blue` | `'#2196F3'` or constants file |

## Async & data (preview only)

| Flutter | React Native |
|---------|----------------|
| `FutureBuilder` | `useEffect` + `useState` for loading/data |
| `http` package | `fetch` or `axios` |
| `Provider` | Context API, Redux, Zustand, etc. |

## When teams pick which framework

| Choose Flutter when… | Choose React Native when… |
|----------------------|---------------------------|
| Team knows Dart/Flutter | Team knows React (web) already |
| Single UI engine everywhere | Reuse React skills from web |
| Heavy custom UI painting | Sharing logic with React web app |

This course teaches **both at intro level** so you can read job descriptions and sample projects.

## Next

**08-common-errors.md** if Metro or Gradle fails.
