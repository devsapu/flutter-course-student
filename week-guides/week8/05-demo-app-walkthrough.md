# Week 8 — Demo app walkthrough (`react_native_intro`)

Follow along in the repo on branch **`week8`**. Read files in this order.

## 1. `App.tsx`

- Wraps the app in `SafeAreaProvider` (handles notches/status bar).
- Renders a single screen: `<HomeScreen />`.

**Flutter parallel:** `MaterialApp(home: HomeScreen())`.

## 2. `src/screens/HomeScreen.tsx`

The “page” students see:

| Section | Component | Purpose |
|---------|-----------|---------|
| Top | `WelcomeHeader` | Title + subtitle |
| Middle | `LessonCard` × 2 | Teaching copy |
| Interactive | `CounterDemo` | `useState` |
| Bottom | `PrimaryButton` + hint text | Placeholder CTA |

Layout: `SafeAreaView` → `ScrollView` → children.

## 3. `WelcomeHeader.tsx`

- Accepts **`title`** and **`subtitle`** props.
- Dark blue card, centered text.
- **Lab task:** change emoji or colors.

## 4. `LessonCard.tsx`

- Props: **`emoji`**, **`title`**, **`body`**.
- White card with border — pattern for list items later.

## 5. `PrimaryButton.tsx`

- Props: **`label`**, **`onPress`**.
- Uses `Pressable` with pressed opacity.
- **Note:** footer button uses `onPress={() => {}}` — students wire a real action in lab.

## 6. `CounterDemo.tsx`

- `useState(0)` for count.
- Two buttons call `setCount` with updater functions.
- **Demo:** tap +1 / -1 while projecting emulator.

## Run-along commands

```bash
cd react_native_intro
npm start          # terminal 1
npm run android    # terminal 2
```

## Discussion prompts

1. Where would you add a **second screen**? (Answer: new file in `src/screens/` + navigation library — not this week.)
2. Which file is the best place for a **reusable** chip like Flutter’s `_LegendChip`? (`src/components/`.)
3. What happens if Metro is **not** running when you launch Android? (Red error / cannot load bundle — start `npm start`.)

## Next

**06-live-lab.md** — your hands-on task.
