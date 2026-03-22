# Provider Introduction (Beginner Friendly)

---

## What is state?

State is data your UI needs right now.

Examples:

- Is data loading?
- What items are in a list?
- Did an error happen?

When state changes, the UI should update.

---

## Local vs Global state

**Local state**:

- Used by one widget or one screen
- Usually managed with `setState`

**Global/shared state**:

- Needed by many widgets/screens
- Should live in one shared place

---

## The prop drilling problem

Sometimes data is needed deep in the widget tree.

Without Provider, you may pass the same value through many constructors:

`App -> Screen -> Section -> Tile`

This is called **prop drilling**. It makes code noisy and harder to maintain.

---

## Why Provider is needed

Provider gives your app a shared state object that many widgets can read.

- One place to store state
- Easy way to update state
- UI rebuilds when state changes

---

## Analogy: shared whiteboard for the app

Think of Provider as a **shared whiteboard** in a classroom:

- One student writes updates on the board (Provider updates state)
- Everyone can look at the same board (widgets read state)
- When board content changes, everyone sees the latest version (UI rebuild)

---

## Common mistakes

- Forgetting `notifyListeners()` after updating state
- Using `Provider.of` with wrong `listen` value
- Calling expensive provider methods repeatedly from `build()`

---

## Next

- Create provider: `provider-create.md`
- Read from UI: `provider-consume.md`
- Update state from UI: `provider-update.md`
