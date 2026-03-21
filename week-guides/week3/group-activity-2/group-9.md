# Group 9 — Show API latency in UI

**Branch:** `week3b-group-9/latency-ui`

---

## Goal

Store the **last request duration** (ms) in state or provider. Show it on screen: **“Last load: 145 ms”**.

---

## Steps

1. Branch: `week3b-group-9/latency-ui`
2. Use **`PerformanceLogger.measure`** or **`DateTime`** before/after **`await`**
3. **`setState`** / **`notifyListeners`** with **`lastLatencyMs`**
4. Place **`Text`** under **`AppBar`** or footer
5. Commit, push, PR

---

## Done when

Number updates after each successful fetch.
