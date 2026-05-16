# Week 8 — Live lab: your first React Native component

**Time:** ~45–60 minutes  
**Branch:** create `week8/student-<your-name>-intro` from `week8`  
**PR target:** `week8`

## Goal

Add a **new component** and use it on `HomeScreen`. Prove you understand **props**, **JSX**, and **imports**.

## Task A — `StudentBadge` component (required)

1. Create `src/components/StudentBadge.tsx`.
2. Props (TypeScript):
   - `name: string`
   - `group: string` (e.g. `"Group 4"`)
3. UI requirements:
   - `View` card with light background
   - `Text` showing: `Hello, {name}!`
   - Smaller `Text` showing the group
4. In `HomeScreen.tsx`:
   - `import { StudentBadge } from '../components/StudentBadge';`
   - Render **below** `WelcomeHeader` with **your** name and group.

### Starter skeleton

```tsx
import {StyleSheet, Text, View} from 'react-native';

type StudentBadgeProps = {
  name: string;
  group: string;
};

export function StudentBadge({name, group}: StudentBadgeProps) {
  return (
    <View style={styles.card}>
      {/* TODO: your Text elements */}
    </View>
  );
}

const styles = StyleSheet.create({
  card: {
    /* TODO */
  },
});
```

## Task B — personalize header (required)

Edit `WelcomeHeader.tsx`:

- Change the emoji, **or**
- Change `title` / `subtitle` strings passed from `HomeScreen`.

## Task C — optional stretch

- Wire the footer `PrimaryButton` to `Alert.alert('Week 8', 'Component lab done!')` (import `Alert` from `react-native`).
- Add a third `LessonCard` describing one thing you learned.

## Verify before PR

```bash
cd react_native_intro
npm start          # running
npm run android    # app shows your badge
npm test           # smoke test still passes
```

## PR checklist

- [ ] Branch name: `week8/student-<name>-intro`
- [ ] Only `react_native_intro/` and your guide notes (if any) changed
- [ ] No `node_modules/` committed
- [ ] PR description: screenshot of emulator + list files you created
- [ ] Mention your `name` and `group` in the PR text

## Group variant (instructor option)

| Team | Extra requirement |
|------|-------------------|
| A | `StudentBadge` uses a green border |
| B | Add prop `year: string` (e.g. `"2026"`) |
| C | Use `flexDirection: 'row'` with emoji on the left |

## Next

**07-flutter-vs-react-native.md** — cheat sheet for revision.
